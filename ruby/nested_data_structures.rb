fitness = {
  running_area: {
    name: 'Running Area',
    machine: %w[running_machine, climb_machine, setting_running_machine],
    running_machine_info: {
      total_running_machine: 12,
      running_machine_available: 10
    }
  },
   weight_lifting_room: {
    name: 'Weight-lifting room',
    machine: %w[back-machine, arm-machine, chest-machine],
    arm_machine_info:{
    total_arm_machine: 5,
    arm_machine_available: 4
   }
  }
}

p fitness[:running_area][:name]
p fitness[:weight_lifting_room][:arm_machine_info][:total_arm_machine]
p fitness[:weight_lifting_room][:machine].push("top-arm-machine")