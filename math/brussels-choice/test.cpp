#include <iostream>
#include <queue>
#include <unordered_set>
#include <vector>
#include <string>

using namespace std;

int heuristic(const string& number) {
    if (number == "1" || number == "5" || number == "0") return 0;
    int h = number.length() - 1;
    if (number.back() != '1' && number.back() != '5' && number.back() != '0') h += 1;
    return h;
}

bool is_goal(const string& num) {
    return num == "1" || num == "5" || num == "0";
}

bool is_valid(const string& s) {
    return !(s.length() > 1 && s[0] == '0');
}

vector<string> generate_next(const string& num) {
    vector<string> next_states;
    int len = num.length();

    for (int i = 0; i < len; ++i) {
        for (int j = i + 1; j <= len; ++j) {
            string part = num.substr(i, j - i);
            if (!is_valid(part)) continue;

            int val = stoi(part);
            vector<int> options;

            if (val % 2 == 0) {
                options.push_back(val / 2);
                options.push_back(val * 2);
            } else {
                options.push_back(val * 2);
            }

            for (int opt : options) {
                string new_part = to_string(opt);
                string new_num = num.substr(0, i) + new_part + num.substr(j);
                if (is_valid(new_num)) {
                    next_states.push_back(new_num);
                }
            }
        }
    }
    return next_states;
}

struct Node {
    string number;
    vector<string> path;
    int g; // cost so far

    int f() const {
        return g + heuristic(number);
    }

    bool operator<(const Node& other) const {
        return f() > other.f(); // for min-heap
    }
};

vector<string> a_star(const string& start) {
    priority_queue<Node> pq;
    unordered_set<string> visited;

    pq.push({start, {start}, 0});
    visited.insert(start);

    while (!pq.empty()) {
        Node current = pq.top();
        pq.pop();

        if (is_goal(current.number)) {
            return current.path;
        }

        for (const string& next : generate_next(current.number)) {
            if (!visited.count(next)) {
                visited.insert(next);
                vector<string> new_path = current.path;
                new_path.push_back(next);
                pq.push({next, new_path, current.g + 1});
            }
        }
    }
    return {};
}

int main() {
    string input;
    cout << "Enter starting number: ";
    cin >> input;

    vector<string> path = a_star(input);

    if (!path.empty()) {
        cout << "Shortest path (" << path.size() - 1 << " steps):\n";
        for (const string& step : path) {
            cout << step << "\n";
        }
    } else {
        cout << "No path to goal found.\n";
    }

    return 0;
}

