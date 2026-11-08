.class public final synthetic LB0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/t;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LB0/e;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/e;->H:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, LB0/e;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LB0/e;->H:Landroid/content/Context;

    .line 7
    .line 8
    sget-object v1, LS0/f;->p:Lz4/d0;

    .line 9
    .line 10
    const-class v1, LS0/f;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v2, LS0/f;->v:LS0/f;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lp0/C;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-direct {v2, v0, v3}, Lp0/C;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, LS0/f;

    .line 24
    .line 25
    iget-object v3, v2, Lp0/C;->I:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v5, v3

    .line 28
    check-cast v5, Landroid/content/Context;

    .line 29
    .line 30
    iget-object v3, v2, Lp0/C;->J:Ljava/lang/Object;

    .line 31
    .line 32
    move-object v6, v3

    .line 33
    check-cast v6, Ljava/util/Map;

    .line 34
    .line 35
    iget v7, v2, Lp0/C;->G:I

    .line 36
    .line 37
    iget-object v3, v2, Lp0/C;->K:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v8, v3

    .line 40
    check-cast v8, Lp0/f;

    .line 41
    .line 42
    iget-boolean v9, v2, Lp0/C;->H:Z

    .line 43
    .line 44
    move-object v4, v0

    .line 45
    invoke-direct/range {v4 .. v9}, LS0/f;-><init>(Landroid/content/Context;Ljava/util/Map;ILp0/f;Z)V

    .line 46
    .line 47
    .line 48
    sput-object v0, LS0/f;->v:LS0/f;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    sget-object v0, LS0/f;->v:LS0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-object v0

    .line 57
    :goto_1
    monitor-exit v1

    .line 58
    throw v0

    .line 59
    :pswitch_0
    new-instance v0, LR0/q;

    .line 60
    .line 61
    iget-object v1, p0, LB0/e;->H:Landroid/content/Context;

    .line 62
    .line 63
    invoke-direct {v0, v1}, LR0/q;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, LO0/l;

    .line 68
    .line 69
    new-instance v1, LW0/p;

    .line 70
    .line 71
    invoke-direct {v1}, LW0/p;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v1, Ls0/n;

    .line 75
    .line 76
    iget-object v2, p0, LB0/e;->H:Landroid/content/Context;

    .line 77
    .line 78
    invoke-direct {v1, v2}, Ls0/n;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, LO0/l;-><init>(Ls0/n;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :pswitch_2
    new-instance v0, LB0/p;

    .line 86
    .line 87
    iget-object v1, p0, LB0/e;->H:Landroid/content/Context;

    .line 88
    .line 89
    invoke-direct {v0, v1}, LB0/p;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :pswitch_3
    iget-object v0, p0, LB0/e;->H:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v0}, Ln0/c;->f(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
