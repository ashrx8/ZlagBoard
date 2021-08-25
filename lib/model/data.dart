// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

List<Data> dataFromJson(String str) => List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
    Data({
        this.id,
        this.name,
        this.subtitle,
        this.priority,
        this.url,
        this.renderClass,
        this.cover,
        this.icon,
        this.payload,
    });

    int id;
    String name;
    dynamic subtitle;
    int priority;
    String url;
    String renderClass;
    dynamic cover;
    dynamic icon;
    Payload payload;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"] == null ? null : json["name"],
        subtitle: json["subtitle"],
        priority: json["priority"],
        url: json["url"] == null ? null : json["url"],
        renderClass: json["render_class"],
        cover: json["cover"],
        icon: json["icon"],
        payload: json["payload"] == null ? null : Payload.fromJson(json["payload"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name == null ? null : name,
        "subtitle": subtitle,
        "priority": priority,
        "url": url == null ? null : url,
        "render_class": renderClass,
        "cover": cover,
        "icon": icon,
        "payload": payload == null ? null : payload.toJson(),
    };
}

class Payload {
    Payload({
        this.items,
        this.challenges,
        this.collections,
    });

    List<Item> items;
    List<Challenge> challenges;
    List<Collection> collections;

    factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        challenges: json["challenges"] == null ? null : List<Challenge>.from(json["challenges"].map((x) => Challenge.fromJson(x))),
        collections: json["collections"] == null ? null : List<Collection>.from(json["collections"].map((x) => Collection.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toJson())),
        "challenges": challenges == null ? null : List<dynamic>.from(challenges.map((x) => x.toJson())),
        "collections": collections == null ? null : List<dynamic>.from(collections.map((x) => x.toJson())),
    };
}

class Challenge {
    Challenge({
        this.id,
        this.title,
        this.cover,
        this.thumbnail,
        this.icon,
        this.startDate,
        this.expirationDate,
        this.createdAt,
        this.updatedAt,
        this.participants,
        this.scope,
    });

    int id;
    String title;
    String cover;
    String thumbnail;
    String icon;
    String startDate;
    String expirationDate;
    String createdAt;
    String updatedAt;
    int participants;
    String scope;

    factory Challenge.fromJson(Map<String, dynamic> json) => Challenge(
        id: json["id"],
        title: json["title"],
        cover: json["cover"],
        thumbnail: json["thumbnail"],
        icon: json["icon"],
        startDate: json["start_date"],
        expirationDate: json["expiration_date"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        participants: json["participants"],
        scope: json["scope"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "cover": cover,
        "thumbnail": thumbnail,
        "icon": icon,
        "start_date": startDate,
        "expiration_date": expirationDate,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "participants": participants,
        "scope": scope,
    };
}

class Collection {
    Collection({
        this.id,
        this.name,
        this.subtitle,
        this.rating,
        this.cover,
        this.categories,
        this.provider,
        this.updatedAt,
        this.items,
        this.description,
        this.label,
        this.polygon,
        this.brand,
    });

    int id;
    String name;
    String subtitle;
    int rating;
    String cover;
    int categories;
    String provider;
    UpdatedAt updatedAt;
    List<dynamic> items;
    String description;
    String label;
    List<dynamic> polygon;
    dynamic brand;

    factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        id: json["id"],
        name: json["name"],
        subtitle: json["subtitle"],
        rating: json["rating"],
        cover: json["cover"],
        categories: json["categories"],
        provider: json["provider"],
        updatedAt: UpdatedAt.fromJson(json["updated_at"]),
        items: List<dynamic>.from(json["items"].map((x) => x)),
        description: json["description"],
        label: json["label"],
        polygon: List<dynamic>.from(json["polygon"].map((x) => x)),
        brand: json["brand"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "subtitle": subtitle,
        "rating": rating,
        "cover": cover,
        "categories": categories,
        "provider": provider,
        "updated_at": updatedAt.toJson(),
        "items": List<dynamic>.from(items.map((x) => x)),
        "description": description,
        "label": label,
        "polygon": List<dynamic>.from(polygon.map((x) => x)),
        "brand": brand,
    };
}

class UpdatedAt {
    UpdatedAt({
        this.seconds,
        this.nanos,
    });

    int seconds;
    int nanos;

    factory UpdatedAt.fromJson(Map<String, dynamic> json) => UpdatedAt(
        seconds: json["seconds"],
        nanos: json["nanos"],
    );

    Map<String, dynamic> toJson() => {
        "seconds": seconds,
        "nanos": nanos,
    };
}

class Item {
    Item({
        this.itemId,
        this.itemType,
        this.name,
        this.town,
        this.country,
        this.cover,
        this.updatedAt,
        this.ordering,
        this.title,
        this.subtitle,
        this.buttonLabel,
        this.url,
    });

    int itemId;
    ItemType itemType;
    String name;
    String town;
    String country;
    String cover;
    String updatedAt;
    int ordering;
    String title;
    String subtitle;
    String buttonLabel;
    String url;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        itemId: json["item_id"] == null ? null : json["item_id"],
        itemType: json["item_type"] == null ? null : itemTypeValues.map[json["item_type"]],
        name: json["name"] == null ? null : json["name"],
        town: json["town"] == null ? null : json["town"],
        country: json["country"] == null ? null : json["country"],
        cover: json["cover"],
        updatedAt: json["updatedAt"] == null ? null : json["updatedAt"],
        ordering: json["ordering"] == null ? null : json["ordering"],
        title: json["title"] == null ? null : json["title"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        buttonLabel: json["button_label"] == null ? null : json["button_label"],
        url: json["url"] == null ? null : json["url"],
    );

    Map<String, dynamic> toJson() => {
        "item_id": itemId == null ? null : itemId,
        "item_type": itemType == null ? null : itemTypeValues.reverse[itemType],
        "name": name == null ? null : name,
        "town": town == null ? null : town,
        "country": country == null ? null : country,
        "cover": cover,
        "updatedAt": updatedAt == null ? null : updatedAt,
        "ordering": ordering == null ? null : ordering,
        "title": title == null ? null : title,
        "subtitle": subtitle == null ? null : subtitle,
        "button_label": buttonLabel == null ? null : buttonLabel,
        "url": url == null ? null : url,
    };
}

enum ItemType { GYM, LOCATION }

final itemTypeValues = EnumValues({
    "gym": ItemType.GYM,
    "location": ItemType.LOCATION
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
