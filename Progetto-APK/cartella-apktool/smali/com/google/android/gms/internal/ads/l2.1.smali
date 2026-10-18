.class public final Lcom/google/android/gms/internal/ads/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Lcom/google/android/gms/internal/ads/zA;

.field public static final f:Lcom/google/android/gms/internal/ads/zA;

.field public static final g:Lcom/google/android/gms/internal/ads/zA;

.field public static final h:Lcom/google/android/gms/internal/ads/zA;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    const-string v4, "\\s+"

    .line 6
    .line 7
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    sput-object v4, Lcom/google/android/gms/internal/ads/l2;->d:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    new-array v4, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v5, "auto"

    .line 16
    .line 17
    aput-object v5, v4, v2

    .line 18
    .line 19
    const-string v5, "none"

    .line 20
    .line 21
    aput-object v5, v4, v1

    .line 22
    .line 23
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zA;->u(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zA;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sput-object v4, Lcom/google/android/gms/internal/ads/l2;->e:Lcom/google/android/gms/internal/ads/zA;

    .line 28
    .line 29
    new-array v4, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v5, "dot"

    .line 32
    .line 33
    aput-object v5, v4, v2

    .line 34
    .line 35
    const-string v5, "sesame"

    .line 36
    .line 37
    aput-object v5, v4, v1

    .line 38
    .line 39
    const-string v5, "circle"

    .line 40
    .line 41
    aput-object v5, v4, v3

    .line 42
    .line 43
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zA;->u(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zA;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sput-object v4, Lcom/google/android/gms/internal/ads/l2;->f:Lcom/google/android/gms/internal/ads/zA;

    .line 48
    .line 49
    new-array v4, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    const-string v5, "filled"

    .line 52
    .line 53
    aput-object v5, v4, v2

    .line 54
    .line 55
    const-string v5, "open"

    .line 56
    .line 57
    aput-object v5, v4, v1

    .line 58
    .line 59
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zA;->u(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zA;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sput-object v4, Lcom/google/android/gms/internal/ads/l2;->g:Lcom/google/android/gms/internal/ads/zA;

    .line 64
    .line 65
    new-array v4, v0, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v5, "after"

    .line 68
    .line 69
    aput-object v5, v4, v2

    .line 70
    .line 71
    const-string v2, "before"

    .line 72
    .line 73
    aput-object v2, v4, v1

    .line 74
    .line 75
    const-string v1, "outside"

    .line 76
    .line 77
    aput-object v1, v4, v3

    .line 78
    .line 79
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zA;->u(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zA;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/google/android/gms/internal/ads/l2;->h:Lcom/google/android/gms/internal/ads/zA;

    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/l2;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/l2;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/l2;->c:I

    return-void
.end method
