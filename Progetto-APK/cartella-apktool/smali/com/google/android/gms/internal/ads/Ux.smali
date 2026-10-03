.class public final Lcom/google/android/gms/internal/ads/Ux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/G1;


# instance fields
.field public a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:Z

.field public final f:Ljava/io/Serializable;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->b:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->c:Ljava/util/HashMap;

    .line 27
    .line 28
    new-instance p1, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->f:Ljava/io/Serializable;

    .line 34
    .line 35
    new-instance p1, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->g:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance p1, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->h:Ljava/lang/Object;

    .line 48
    .line 49
    new-instance p1, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->d:Ljava/util/HashMap;

    .line 55
    .line 56
    new-instance p1, Ljava/util/WeakHashMap;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->i:Ljava/lang/Object;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->f:Ljava/io/Serializable;

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->a:Ljava/util/HashMap;

    .line 76
    .line 77
    new-instance v0, Ljava/util/HashMap;

    .line 78
    .line 79
    const/16 v1, 0x10

    .line 80
    .line 81
    const/high16 v2, 0x3f800000    # 1.0f

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ux;->b:Ljava/util/HashMap;

    .line 87
    .line 88
    new-instance v0, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ux;->c:Ljava/util/HashMap;

    .line 94
    .line 95
    new-instance v0, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ux;->d:Ljava/util/HashMap;

    .line 101
    .line 102
    new-instance v0, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ux;->g:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->h:Ljava/lang/Object;

    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ux;->e:Z

    .line 113
    .line 114
    new-array p1, p1, [Ljava/lang/String;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ux;->i:Ljava/lang/Object;

    .line 117
    .line 118
    return-void
.end method
