.class public final Lcom/google/android/gms/internal/ads/vO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:[Lcom/google/android/gms/internal/ads/bO;

.field public final c:[I

.field public final d:[[[I

.field public final e:Lcom/google/android/gms/internal/ads/bO;


# direct methods
.method public constructor <init>([I[Lcom/google/android/gms/internal/ads/bO;[I[[[ILcom/google/android/gms/internal/ads/bO;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vO;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vO;->b:[Lcom/google/android/gms/internal/ads/bO;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vO;->d:[[[I

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vO;->c:[I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vO;->e:Lcom/google/android/gms/internal/ads/bO;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vO;->a:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/bO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vO;->b:[Lcom/google/android/gms/internal/ads/bO;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public final c()Lcom/google/android/gms/internal/ads/bO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vO;->e:Lcom/google/android/gms/internal/ads/bO;

    return-object v0
.end method
