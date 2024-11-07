#!/bin/bash


analyze_directory_size() {
  echo "Размеры файлов и директорий в текущей директории (от большего к меньшему):"
  for item in *; do
    if [ -e "$item" ]; then
      size=$(du -sb "$item" 2>/dev/null)
      echo "$size $item"
    fi
  done | sort -nr | awk '{print $1/1024 " K8\t" $2}'
}


analyze_directory_size
