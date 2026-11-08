.class public final synthetic LF/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LF/l;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LF/l;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput p2, p0, LF/l;->H:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, LF/l;->G:I

    .line 2
    .line 3
    iget v1, p0, LF/l;->H:I

    .line 4
    .line 5
    iget-object v2, p0, LF/l;->I:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, LD0/n;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v2, LD0/n;->b:LD0/o;

    .line 18
    .line 19
    check-cast v0, LB0/L;

    .line 20
    .line 21
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 22
    .line 23
    iget-object v0, v0, LB0/O;->j0:Lp0/e;

    .line 24
    .line 25
    new-instance v2, LB0/K;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v2, v1, v3}, LB0/K;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v5, v0, Lp0/e;->b:Lp0/I;

    .line 39
    .line 40
    iget-object v5, v5, Lp0/I;->a:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-ne v4, v5, :cond_0

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v4, 0x0

    .line 51
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 52
    .line 53
    .line 54
    iget v4, v0, Lp0/e;->f:I

    .line 55
    .line 56
    add-int/2addr v4, v3

    .line 57
    iput v4, v0, Lp0/e;->f:I

    .line 58
    .line 59
    new-instance v3, Lf/t;

    .line 60
    .line 61
    const/4 v4, 0x5

    .line 62
    invoke-direct {v3, v4, v0, v2}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lp0/e;->a(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lp0/e;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, v0, Lp0/e;->d:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object v1, v0, Lp0/e;->d:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_1

    .line 85
    .line 86
    iget-object v0, v0, Lp0/e;->c:Lp0/d;

    .line 87
    .line 88
    invoke-interface {v0, v2, v1}, Lp0/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    :pswitch_0
    invoke-static {v2}, LA0/O;->I(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    throw v0

    .line 97
    :pswitch_1
    check-cast v2, Ln0/a;

    .line 98
    .line 99
    iget-object v0, v2, Ln0/a;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 100
    .line 101
    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    check-cast v2, Lc/g;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
