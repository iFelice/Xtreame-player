.class public final Lcom/google/android/gms/internal/ads/Lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/c;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Ab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ab;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Lb;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lb;->H:Lcom/google/android/gms/internal/ads/Ab;

    return-void
.end method


# virtual methods
.method public final c(LB0/w0;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Lb;->G:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Lb;->H:Lcom/google/android/gms/internal/ads/Ab;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1}, LB0/w0;->h()Ll3/z0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/Ab;->c(Ll3/z0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-static {v1, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, LB0/w0;->h()Ll3/z0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/Ab;->c(Ll3/z0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception p1

    .line 32
    invoke-static {v1, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
