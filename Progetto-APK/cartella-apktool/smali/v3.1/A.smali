.class public final Lv3/A;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field public final synthetic G:Lv3/C;


# direct methods
.method public constructor <init>(Lv3/C;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/A;->G:Lv3/C;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lv3/A;->G:Lv3/C;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lv3/A;->G:Lv3/C;

    .line 9
    .line 10
    iget v3, v2, Lv3/C;->a:I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-gt v1, v3, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return v4

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v2, Lv3/C;->f:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    new-instance v2, Landroid/util/Pair;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lv3/B;

    .line 34
    .line 35
    iget-object p1, p1, Lv3/B;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget-object v1, p0, Lv3/A;->G:Lv3/C;

    .line 48
    .line 49
    iget v1, v1, Lv3/C;->a:I

    .line 50
    .line 51
    if-le p1, v1, :cond_1

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    :cond_1
    monitor-exit v0

    .line 55
    return v4

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method
