.class public final synthetic LU0/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

.field public final synthetic I:LB0/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;LB0/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LU0/M;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LU0/M;->H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 7
    .line 8
    iput-object p2, p0, LU0/M;->I:LB0/i;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, LU0/M;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LU0/M;->H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 7
    .line 8
    iget-object v1, p0, LU0/M;->I:LB0/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    monitor-exit v1

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, LU0/N;

    .line 18
    .line 19
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 20
    .line 21
    check-cast v0, LB0/L;

    .line 22
    .line 23
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 24
    .line 25
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 26
    .line 27
    check-cast v0, LC0/A;

    .line 28
    .line 29
    iget-object v2, v0, LC0/A;->J:LC0/z;

    .line 30
    .line 31
    iget-object v2, v2, LC0/z;->e:LO0/y;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, LC0/n;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v3, v2, v1, v4}, LC0/n;-><init>(LC0/b;LB0/i;I)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x3fc

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1, v3}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, LU0/M;->H:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, LU0/N;

    .line 54
    .line 55
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 56
    .line 57
    check-cast v0, LB0/L;

    .line 58
    .line 59
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 65
    .line 66
    check-cast v0, LC0/A;

    .line 67
    .line 68
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, LC0/n;

    .line 73
    .line 74
    const/4 v3, 0x3

    .line 75
    iget-object v4, p0, LU0/M;->I:LB0/i;

    .line 76
    .line 77
    invoke-direct {v2, v1, v4, v3}, LC0/n;-><init>(LC0/b;LB0/i;I)V

    .line 78
    .line 79
    .line 80
    const/16 v3, 0x3f7

    .line 81
    .line 82
    invoke-virtual {v0, v1, v3, v2}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
