.class public final synthetic Lcom/google/android/gms/internal/ads/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/fv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fv;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/ev;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ev;->H:Lcom/google/android/gms/internal/ads/fv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ev;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ev;->H:Lcom/google/android/gms/internal/ads/fv;

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
    const/4 v0, 0x6

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2, v2}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/fv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/hs;->y(Ll3/z0;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/fv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/fv;->T:Ll3/z0;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hs;->y(Ll3/z0;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
