const handleJoinSession = async () => {
  App.session = await App.cable.subscriptions.create("SessionChannel", {
    connected: () => {
      broadcastData({ type: "initiateConnection" });
    },
    received: data => {
      console.log("RECEIVED:", data);
    }
  });
};

const handleLeaveSession = () => {};

const broadcastData = data => {
  fetch("sessions", {
    method: "POST",
    body: JSON.stringify(data),
    headers: { "content-type": "application/json" }
  });
};
