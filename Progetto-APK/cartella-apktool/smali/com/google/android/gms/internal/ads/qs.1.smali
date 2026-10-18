.class public final synthetic Lcom/google/android/gms/internal/ads/qs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/rs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/rs;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/qs;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qs;->H:Lcom/google/android/gms/internal/ads/rs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/qs;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qs;->H:Lcom/google/android/gms/internal/ads/rs;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, La3/b;

    .line 12
    .line 13
    iget-object v0, v0, La3/b;->J:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/sj;

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    invoke-static {v2, v1, v1}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sj;->y(Ll3/z0;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, La3/b;

    .line 29
    .line 30
    iget-object v0, v0, La3/b;->J:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/sj;

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-static {v2, v1, v1}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/sj;->y(Ll3/z0;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
