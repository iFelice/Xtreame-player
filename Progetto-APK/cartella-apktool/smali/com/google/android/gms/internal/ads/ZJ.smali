.class public final Lcom/google/android/gms/internal/ads/ZJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Lcom/google/android/gms/internal/ads/XJ;

.field public c:Lcom/google/android/gms/internal/ads/YJ;

.field public d:I

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZJ;->e:F

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "audio"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/media/AudioManager;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ZJ;->a:Landroid/media/AudioManager;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ZJ;->c:Lcom/google/android/gms/internal/ads/YJ;

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/XJ;

    .line 28
    .line 29
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/XJ;-><init>(Lcom/google/android/gms/internal/ads/ZJ;Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ZJ;->b:Lcom/google/android/gms/internal/ads/XJ;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/ads/ZJ;->d:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZJ;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZJ;->a:Landroid/media/AudioManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZJ;->b:Lcom/google/android/gms/internal/ads/XJ;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZJ;->c:Lcom/google/android/gms/internal/ads/YJ;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vK;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/vK;->o(ZII)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZJ;->d:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/ZJ;->d:I

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const p1, 0x3e4ccccd    # 0.2f

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZJ;->e:F

    .line 18
    .line 19
    cmpl-float v0, v0, p1

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/gms/internal/ads/ZJ;->e:F

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ZJ;->c:Lcom/google/android/gms/internal/ads/YJ;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/sK;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 32
    .line 33
    iget v0, p1, Lcom/google/android/gms/internal/ads/vK;->J:F

    .line 34
    .line 35
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/vK;->v:Lcom/google/android/gms/internal/ads/ZJ;

    .line 36
    .line 37
    iget v1, v1, Lcom/google/android/gms/internal/ads/ZJ;->e:F

    .line 38
    .line 39
    mul-float v0, v0, v1

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x1

    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method
