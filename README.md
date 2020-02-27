# README

This README would normally document whatever steps are necessary to get the
application up and running.

- Ruby version: `2.6.3`

- System dependencies

- Configuration

- Database creation

**User** 
|  Column  |   Type   |
| :------  | :------  |
|   name   |  string  | 

**Task** 
|  Column  |   Type   |
| :------  | :------  |
|  title   |  string  |
|  content |   text   |
| begin_time | datetime |
|  due_time  | datetime |
| priority | string |
|  status  | string | 
|  user_id |  index | 

**Label**
|  Column  |   Type   |
| :------  | :------  |
|   name   |  string  |

**Task_labels**
|  Column  |   Type   |
| :------  | :------  |
|  task_id |   index  |
| label_id |   index  |


- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

