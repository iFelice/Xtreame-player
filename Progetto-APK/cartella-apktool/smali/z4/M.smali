.class public final Lz4/M;
.super Lz4/b;
.source "SourceFile"


# instance fields
.field public final synthetic J:I

.field public final K:Ljava/util/Iterator;

.field public final synthetic L:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ly4/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lz4/M;->J:I

    .line 2
    iput-object p1, p0, Lz4/M;->K:Ljava/util/Iterator;

    iput-object p2, p0, Lz4/M;->L:Ljava/lang/Object;

    invoke-direct {p0}, Lz4/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz4/n0;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lz4/M;->J:I

    .line 4
    iput-object p1, p0, Lz4/M;->L:Ljava/lang/Object;

    invoke-direct {p0}, Lz4/b;-><init>()V

    .line 5
    iget-object p1, p1, Lz4/n0;->I:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lz4/M;->K:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    iget v1, p0, Lz4/M;->J:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lz4/M;->L:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lz4/M;->K:Ljava/util/Iterator;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v5, v3

    .line 23
    check-cast v5, Lz4/n0;

    .line 24
    .line 25
    iget-object v5, v5, Lz4/n0;->J:Ljava/util/Set;

    .line 26
    .line 27
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    move-object v2, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput v0, p0, Lz4/b;->H:I

    .line 36
    .line 37
    :goto_0
    return-object v2

    .line 38
    :cond_2
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v5, v3

    .line 49
    check-cast v5, Ly4/l;

    .line 50
    .line 51
    invoke-interface {v5, v1}, Ly4/l;->apply(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    move-object v2, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iput v0, p0, Lz4/b;->H:I

    .line 60
    .line 61
    :goto_1
    return-object v2

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
