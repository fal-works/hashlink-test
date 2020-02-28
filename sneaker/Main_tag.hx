class GameObject extends sneaker.tag.Tagged {
	public function new() {
		super();
	}
}

class Main {
	static function main() {
		final object = new GameObject();
		object.newTag("player character");

		object.error("Oh it's broken");
		// This is the same as:
		// sneaker.log.Logger.error("Oh it's broken", object.tag);
	}
}
