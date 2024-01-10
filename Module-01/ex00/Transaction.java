import java.util.UUID;

public class Transaction {
	private final UUID 	id;
	private User 				recipient;
	private User 				sender;
	private String 			category;
	private int 				amount;

	Transaction() {
		this.id = UUID.randomUUID();
	}

	public UUID getId() {
		return this.id;
	}

	public User getRecipient() {
		return this.recipient;
	}
	public void setRecipient(User recipient) {
		this.recipient = recipient;
	}

	public User getSender() {
		return this.sender;
	}
	public void setSender(User sender) {
		this.sender = sender;
	}

	public String getCategory() {
		return this.category;
	}

	public int getAmount() {
		return this.amount;
	}
	public void setAmount(int amount) {
	}
};
