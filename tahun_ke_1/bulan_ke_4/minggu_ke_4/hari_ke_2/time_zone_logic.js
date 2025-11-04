const was_package_received_yesterday = (f, t, s, d) => s + d + (t - f) < 0;

console.log(was_package_received_yesterday(3, 0, 13, 1));
// ➜ false (sampai 11:00 hari yang sama)

console.log(was_package_received_yesterday(12, -3, 5, 8));
// ➜ true (sampai jam 22:00 hari sebelumnya)
