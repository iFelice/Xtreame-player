.class public final LZ2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW2/b;


# instance fields
.field public final synthetic G:I

.field public final H:Ls6/a;

.field public final I:Ls6/a;

.field public final J:Ls6/a;

.field public final K:Ls6/a;


# direct methods
.method public synthetic constructor <init>(Ls6/a;Ls6/a;LW2/b;Ls6/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, LZ2/d;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LZ2/d;->H:Ls6/a;

    .line 7
    .line 8
    iput-object p2, p0, LZ2/d;->I:Ls6/a;

    .line 9
    .line 10
    iput-object p3, p0, LZ2/d;->J:Ls6/a;

    .line 11
    .line 12
    iput-object p4, p0, LZ2/d;->K:Ls6/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, LZ2/d;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LZ2/d;->K:Ls6/a;

    .line 4
    .line 5
    iget-object v2, p0, LZ2/d;->J:Ls6/a;

    .line 6
    .line 7
    iget-object v3, p0, LZ2/d;->I:Ls6/a;

    .line 8
    .line 9
    iget-object v4, p0, LZ2/d;->H:Ls6/a;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v4}, Ls6/a;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-interface {v3}, Ls6/a;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lb3/d;

    .line 25
    .line 26
    invoke-interface {v2}, Ls6/a;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, La3/m;

    .line 31
    .line 32
    invoke-interface {v1}, Ls6/a;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lc3/c;

    .line 37
    .line 38
    new-instance v4, La3/l;

    .line 39
    .line 40
    invoke-direct {v4, v0, v3, v2, v1}, La3/l;-><init>(Ljava/util/concurrent/Executor;Lb3/d;La3/m;Lc3/c;)V

    .line 41
    .line 42
    .line 43
    return-object v4

    .line 44
    :pswitch_0
    invoke-interface {v4}, Ls6/a;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/content/Context;

    .line 49
    .line 50
    invoke-interface {v3}, Ls6/a;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lb3/d;

    .line 55
    .line 56
    invoke-interface {v2}, Ls6/a;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, La3/a;

    .line 61
    .line 62
    invoke-interface {v1}, Ls6/a;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ld3/a;

    .line 67
    .line 68
    new-instance v1, La3/d;

    .line 69
    .line 70
    invoke-direct {v1, v0, v3, v2}, La3/d;-><init>(Landroid/content/Context;Lb3/d;La3/a;)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
