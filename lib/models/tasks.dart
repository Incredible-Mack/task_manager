class Task {
  String content;
  DateTime timestamp;
  bool done;

  Task({
    required this.content,
    required this.timestamp,
    required this.done,
  });

  //takes in the task
  factory Task.fromMap(Map task) {
    return Task(
      content: task["content"],
      timestamp: task["timestamp"],
      done: task["done"],
    );
  }

  //convert the task class into a map for easy storing in hive db
  Map toMap() {
    return {
      "content": content,
      "timestamp": timestamp,
      "done": done,
    };
  }
}
