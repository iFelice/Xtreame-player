.class public final Lcom/google/android/gms/internal/ads/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Aj;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Ef;

.field public final H:Lcom/google/android/gms/internal/ads/Fn;

.field public final I:Lcom/google/android/gms/internal/ads/Ov;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/Ov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bi;->G:Lcom/google/android/gms/internal/ads/Ef;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bi;->H:Lcom/google/android/gms/internal/ads/Fn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bi;->I:Lcom/google/android/gms/internal/ads/Ov;

    return-void
.end method


# virtual methods
.method public final zzr()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->fc:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bi;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "androidx.compose.ui"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bi;->H:Lcom/google/android/gms/internal/ads/Fn;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Fn;->a()Lcom/google/android/gms/internal/ads/Om;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "action"

    .line 65
    .line 66
    const-string v4, "hcp"

    .line 67
    .line 68
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-eq v1, v0, :cond_2

    .line 72
    .line 73
    const-string v0, "0"

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const-string v0, "1"

    .line 77
    .line 78
    :goto_2
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bi;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Om;->q(Lcom/google/android/gms/internal/ads/Ov;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Om;->u()V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method
