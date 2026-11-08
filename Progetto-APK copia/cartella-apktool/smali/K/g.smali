.class public final LK/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, LK/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LK/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, LK/g;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, LK/g;->e:Ljava/lang/Object;

    .line 11
    .line 12
    iput p4, p0, LK/g;->d:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()LK/i;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, LK/g;->a:I

    .line 4
    .line 5
    iget v3, p0, LK/g;->d:I

    .line 6
    .line 7
    iget-object v4, p0, LK/g;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, LK/g;->c:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v6, p0, LK/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :try_start_0
    check-cast v4, Ljava/util/List;

    .line 17
    .line 18
    invoke-static {v6, v5, v4, v3}, LK/j;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)LK/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    new-instance v0, LK/i;

    .line 24
    .line 25
    const/4 v1, -0x3

    .line 26
    invoke-direct {v0, v1}, LK/i;-><init>(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    check-cast v4, LK/f;

    .line 31
    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v4, v2, v0

    .line 35
    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    aget-object v0, v2, v0

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v6, v5, v0, v3}, LK/j;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)LK/i;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LK/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LK/g;->a()LK/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, LK/g;->a()LK/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
