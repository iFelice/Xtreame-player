.class public final synthetic Lcom/google/android/gms/internal/ads/Te;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final synthetic I:J

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/google/android/gms/internal/ads/Te;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Te;->J:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Te;->H:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/Te;->I:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Te;->G:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Te;->H:Z

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Te;->I:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Te;->J:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Lcom/google/android/gms/internal/ads/Xf;

    .line 13
    .line 14
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Xf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 15
    .line 16
    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Oe;->y(JZ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast v4, Lcom/google/android/gms/internal/ads/Oe;

    .line 21
    .line 22
    invoke-interface {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Oe;->y(JZ)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast v4, Lcom/google/android/gms/internal/ads/We;

    .line 27
    .line 28
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 29
    .line 30
    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Oe;->y(JZ)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
