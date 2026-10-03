.class public final Lv2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/C;


# instance fields
.field public final a:Lokhttp3/Call$Factory;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv2/c;->a:Lokhttp3/Call$Factory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, LC2/t;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public final b(Ljava/lang/Object;IILw2/l;)LC2/B;
    .locals 0

    .line 1
    check-cast p1, LC2/t;

    .line 2
    .line 3
    new-instance p2, LC2/B;

    .line 4
    .line 5
    new-instance p3, Lv2/a;

    .line 6
    .line 7
    iget-object p4, p0, Lv2/c;->a:Lokhttp3/Call$Factory;

    .line 8
    .line 9
    invoke-direct {p3, p4, p1}, Lv2/a;-><init>(Lokhttp3/Call$Factory;LC2/t;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, LC2/B;-><init>(Lw2/i;Lcom/bumptech/glide/load/data/e;)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method
