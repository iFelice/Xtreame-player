.class public final LY5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LY5/c;

.field public b:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(LY5/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LY5/a;->a:LY5/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()LY5/c;
    .locals 4

    .line 1
    iget-object v0, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, LY5/a;->a:LY5/c;

    .line 6
    .line 7
    iget-object v0, v0, LY5/c;->a:Ljava/util/IdentityHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    iget-object v2, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, LY5/b;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, LY5/c;

    .line 58
    .line 59
    iget-object v1, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 60
    .line 61
    invoke-direct {v0, v1}, LY5/c;-><init>(Ljava/util/IdentityHashMap;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, LY5/a;->a:LY5/c;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, LY5/a;->a:LY5/c;

    .line 70
    .line 71
    return-object v0
.end method

.method public final b(LY5/b;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, LY5/a;->b:Ljava/util/IdentityHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
