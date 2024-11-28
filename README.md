Cấu trúc thư mục project:
./
├── docker-compose.yml          # File chính để khởi chạy container
├── .env                        # Chứa các biến môi trường 
├── mysql/
│   ├── config/
│   │   ├── my.cnf             # File cấu hình MySQL
│   │   └── mysql-healthcheck.sh # Script kiểm tra sức khỏe container
│   ├── backup/                 # Thư mục chứa backup
│   │   └── scripts/
│   │       └── backup.sh      # Script tự động backup
│   ├── data/                  # Thư mục chứa dữ liệu
│   └── init/                  # Thư mục chứa script khởi tạo
│       ├── 01-databases.sql   # Tạo databases
│       └── 02-users.sql       # Tạo users và phân quyền
└── nginx/                     # (Optional) Nếu cần proxy
    └── conf.d/
        └── mysql.conf         # Cấu hình nginx cho MySQL