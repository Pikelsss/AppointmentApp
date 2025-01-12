import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["modal", "editForm"];

  view(event) {
    const appointmentId = event.currentTarget.dataset.id;
    console.log(`Viewing appointment ${appointmentId}`);
  }

  edit(event) {
    const appointmentId = event.currentTarget.dataset.id;
    this.populateEditForm(appointmentId);
    this.showModal();
  }

  populateEditForm(appointmentId) {
    const appointment = this.fetchAppointment(appointmentId);

    const form = this.editFormTarget.querySelector("form");
    form.action = `/appointments/${appointmentId}`;
    form.title.value = appointment.title;
    form.start_date.value = appointment.start_date;
    form.end_date.value = appointment.end_date;
    form.description.value = appointment.description;
  }

  fetchAppointment(appointmentId) {
    return {
      title: "Sample Appointment",
      start_date: "2025-01-15T09:00",
      end_date: "2025-01-15T10:00",
      description: "This is a sample appointment description.",
    };
  }

  showModal() {
    this.modalTarget.classList.remove("hidden");
  }

  close() {
    this.modalTarget.classList.add("hidden");
  }
}
