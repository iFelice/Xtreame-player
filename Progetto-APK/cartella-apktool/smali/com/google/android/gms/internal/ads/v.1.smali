.class public final synthetic Lcom/google/android/gms/internal/ads/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:J

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/v3;Ljava/lang/String;J)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/v;->G:I

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v;->I:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/v;->H:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/x;Landroid/view/Surface;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/v;->G:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v;->J:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/v;->H:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/v;->G:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/v;->H:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v;->I:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/v;->J:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Lcom/google/android/gms/internal/ads/v3;

    .line 13
    .line 14
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/v3;->G:Lcom/google/android/gms/internal/ads/A3;

    .line 15
    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/A3;->a(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/v3;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/v3;->G:Lcom/google/android/gms/internal/ads/A3;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/A3;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    check-cast v3, Lcom/google/android/gms/internal/ads/x;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 37
    .line 38
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 45
    .line 46
    check-cast v3, Lcom/google/android/gms/internal/ads/tL;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/tL;->l()Lcom/google/android/gms/internal/ads/dL;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Lcom/google/android/gms/internal/ads/qL;

    .line 53
    .line 54
    invoke-direct {v6, v5, v4, v1, v2}, Lcom/google/android/gms/internal/ads/qL;-><init>(Lcom/google/android/gms/internal/ads/dL;Ljava/lang/Object;J)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x1a

    .line 58
    .line 59
    invoke-virtual {v3, v5, v1, v6}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vK;->E:Ljava/lang/Object;

    .line 63
    .line 64
    if-ne v2, v4, :cond_0

    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/fF;

    .line 67
    .line 68
    const/16 v3, 0x17

    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lx/e;->o()V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
