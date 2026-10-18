.class public final Lcom/google/android/gms/internal/ads/Qq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gl;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Ov;

.field public final H:Lcom/google/android/gms/internal/ads/Ib;

.field public final I:Lf3/a;

.field public J:Lcom/google/android/gms/internal/ads/zj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Ib;Lf3/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qq;->J:Lcom/google/android/gms/internal/ads/zj;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qq;->G:Lcom/google/android/gms/internal/ads/Ov;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qq;->H:Lcom/google/android/gms/internal/ads/Ib;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Qq;->I:Lf3/a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Qq;->I:Lf3/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 p3, 0x1

    .line 8
    const/4 v0, 0x2

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qq;->H:Lcom/google/android/gms/internal/ads/Ib;

    .line 10
    .line 11
    if-eq p1, p3, :cond_1

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p3, 0x5

    .line 16
    if-ne p1, p3, :cond_4

    .line 17
    .line 18
    :try_start_1
    new-instance p1, LR3/b;

    .line 19
    .line 20
    invoke-direct {p1, p2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/Ib;->K(LR3/a;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    new-instance p1, LR3/b;

    .line 31
    .line 32
    invoke-direct {p1, p2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/Ib;->V2(LR3/b;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, LR3/b;

    .line 41
    .line 42
    invoke-direct {p1, p2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/Ib;->H(LR3/a;)Z

    .line 46
    .line 47
    .line 48
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Qq;->J:Lcom/google/android/gms/internal/ads/zj;

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->o1:Lcom/google/android/gms/internal/ads/J7;

    .line 57
    .line 58
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 59
    .line 60
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Qq;->G:Lcom/google/android/gms/internal/ads/Ov;

    .line 75
    .line 76
    iget p1, p1, Lcom/google/android/gms/internal/ads/Ov;->Y:I

    .line 77
    .line 78
    if-ne p1, v0, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Qq;->J:Lcom/google/android/gms/internal/ads/zj;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zj;->zza()V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    return-void

    .line 86
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/fl;

    .line 87
    .line 88
    const-string p2, "Adapter failed to show."

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/ads/fl;

    .line 95
    .line 96
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw p2
.end method
