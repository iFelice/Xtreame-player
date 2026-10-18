.class public final Lcom/google/android/gms/internal/ads/ft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(IZZIIIIIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/ft;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/ft;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ft;->c:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/ft;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/ft;->e:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/ft;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/ft;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/ft;->h:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/ft;->i:F

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/ft;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "am"

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/ft;->a:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const-string v0, "ma"

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ft;->b:Z

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    const-string v0, "sp"

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ft;->c:Z

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v0, "muv"

    .line 25
    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/ft;->d:I

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->ma:Lcom/google/android/gms/internal/ads/J7;

    .line 32
    .line 33
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 34
    .line 35
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/ads/ft;->e:I

    .line 50
    .line 51
    const-string v1, "muv_min"

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/ft;->f:I

    .line 57
    .line 58
    const-string v1, "muv_max"

    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/ft;->g:I

    .line 64
    .line 65
    const-string v1, "rm"

    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/ads/ft;->h:I

    .line 71
    .line 72
    const-string v1, "riv"

    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/ads/ft;->i:F

    .line 78
    .line 79
    const-string v1, "android_app_volume"

    .line 80
    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 82
    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ft;->j:Z

    .line 85
    .line 86
    const-string v1, "android_app_muted"

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
