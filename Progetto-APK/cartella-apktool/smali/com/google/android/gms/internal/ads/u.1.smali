.class public final synthetic Lcom/google/android/gms/internal/ads/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/x;

.field public final synthetic I:J

.field public final synthetic J:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/x;IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/u;->G:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u;->H:Lcom/google/android/gms/internal/ads/x;

    iput p2, p0, Lcom/google/android/gms/internal/ads/u;->J:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/u;->I:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/x;JI)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/u;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u;->H:Lcom/google/android/gms/internal/ads/x;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/u;->I:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/u;->J:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/u;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u;->H:Lcom/google/android/gms/internal/ads/x;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 12
    .line 13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/tL;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tL;->J:Lcom/google/android/gms/internal/ads/sL;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sL;->e:Lcom/google/android/gms/internal/ads/wN;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tL;->j(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/dL;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/mL;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/mL;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 35
    .line 36
    .line 37
    const/16 v3, 0x3fd

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 47
    .line 48
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 55
    .line 56
    check-cast v0, Lcom/google/android/gms/internal/ads/tL;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/tL;->J:Lcom/google/android/gms/internal/ads/sL;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sL;->e:Lcom/google/android/gms/internal/ads/wN;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tL;->j(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/dL;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lt0/d;

    .line 67
    .line 68
    iget v3, p0, Lcom/google/android/gms/internal/ads/u;->J:I

    .line 69
    .line 70
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/u;->I:J

    .line 71
    .line 72
    invoke-direct {v2, v3, v4, v5, v1}, Lt0/d;-><init>(IJLcom/google/android/gms/internal/ads/dL;)V

    .line 73
    .line 74
    .line 75
    const/16 v3, 0x3fa

    .line 76
    .line 77
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
