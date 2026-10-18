.class public final Lcom/google/android/gms/internal/ads/U4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/V4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/V4;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/U4;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/U4;->H:Lcom/google/android/gms/internal/ads/V4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/U4;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U4;->H:Lcom/google/android/gms/internal/ads/V4;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/U4;->H:Lcom/google/android/gms/internal/ads/V4;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/V4;->f:Lj3/b;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/V4;->i:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Lj3/b;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lj3/b;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Lj3/b;->d(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/V4;->f:Lj3/b;
    :try_end_0
    .catch LJ3/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LJ3/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/V4;->f:Lj3/b;

    .line 43
    .line 44
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
