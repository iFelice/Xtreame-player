.class public final synthetic Lcom/google/android/gms/internal/ads/Ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Ge;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ge;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ee;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ee;->H:Lcom/google/android/gms/internal/ads/Ge;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ee;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ee;->H:Lcom/google/android/gms/internal/ads/Ge;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-array v0, v2, [Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "surfaceDestroyed"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    new-array v0, v2, [Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "surfaceCreated"

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    new-array v0, v2, [Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "firstFrameRendered"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
