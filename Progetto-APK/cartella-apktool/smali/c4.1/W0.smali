.class public final synthetic Lc4/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/d1;


# direct methods
.method public synthetic constructor <init>(Lc4/d1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lc4/W0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lc4/W0;->H:Lc4/d1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lc4/W0;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lc4/W0;->H:Lc4/d1;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lc4/d1;->q()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object v0, v2, Lc4/d1;->J:Lc4/G;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lc4/l0;

    .line 20
    .line 21
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 22
    .line 23
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "Failed to send Dma consent settings to service"

    .line 27
    .line 28
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Lc4/d1;->B(Z)Lc4/J1;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Lc4/G;->t2(Lc4/J1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lc4/l0;

    .line 49
    .line 50
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 51
    .line 52
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "Failed to send Dma consent settings to the service"

    .line 56
    .line 57
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void

    .line 63
    :pswitch_1
    iget-object v0, v2, Lc4/d1;->J:Lc4/G;

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lc4/l0;

    .line 70
    .line 71
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 72
    .line 73
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "Failed to send storage consent settings to service"

    .line 77
    .line 78
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Lc4/d1;->B(Z)Lc4/J1;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Lc4/G;->a0(Lc4/J1;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Lc4/l0;

    .line 99
    .line 100
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 101
    .line 102
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "Failed to send storage consent settings to the service"

    .line 106
    .line 107
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 108
    .line 109
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
