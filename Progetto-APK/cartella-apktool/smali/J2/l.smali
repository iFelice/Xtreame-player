.class public final LJ2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/o;
.implements LP2/h;


# instance fields
.field public final G:Ljava/lang/Object;

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LF2/G;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJ2/l;->G:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, LJ2/l;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/l;->H:Ljava/lang/Object;

    iput-object p2, p0, LJ2/l;->G:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/b;Le0/o;LY/K;Z)Lcom/bumptech/glide/n;
    .locals 4

    .line 1
    invoke-static {}, LP2/o;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, LP2/o;->a()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LJ2/l;->G:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/bumptech/glide/n;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    new-instance v1, LJ2/i;

    .line 21
    .line 22
    invoke-direct {v1, p3}, LJ2/i;-><init>(Le0/o;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, LJ2/l;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, LF2/G;

    .line 28
    .line 29
    new-instance v3, LJ2/l;

    .line 30
    .line 31
    invoke-direct {v3, p0, p4}, LJ2/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p4, Lcom/bumptech/glide/n;

    .line 38
    .line 39
    invoke-direct {p4, p2, v1, v3, p1}, Lcom/bumptech/glide/n;-><init>(Lcom/bumptech/glide/b;LJ2/h;LJ2/o;Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    check-cast v0, Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance p1, LJ2/k;

    .line 48
    .line 49
    invoke-direct {p1, p0, p3}, LJ2/k;-><init>(LJ2/l;Le0/o;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, LJ2/i;->i(LJ2/j;)V

    .line 53
    .line 54
    .line 55
    if-eqz p5, :cond_0

    .line 56
    .line 57
    invoke-virtual {p4}, Lcom/bumptech/glide/n;->j()V

    .line 58
    .line 59
    .line 60
    :cond_0
    move-object v1, p4

    .line 61
    :cond_1
    return-object v1
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LJ2/l;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    return-object v0
.end method
