.class public abstract Lp1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:J

.field public g:Z

.field public h:Z

.field public final i:Lp1/f;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

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
    new-instance p1, Lp1/f;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p1, v0}, Lp1/f;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lp1/j;->i:Lp1/f;

    .line 14
    .line 15
    new-instance p1, Lm2/c;

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    invoke-direct {p1, v1, v0}, Lm2/c;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lp1/j;->m:Ljava/lang/Object;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lp1/f;

    .line 28
    .line 29
    invoke-direct {p1, v0}, Lp1/f;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lp1/j;->i:Lp1/f;

    .line 33
    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/x;

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/x;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lp1/j;->m:Ljava/lang/Object;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lp1/j;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public abstract b(Lp0/E;)J
.end method

.method public abstract c(Lp0/E;JLm2/c;)Z
.end method

.method public d(Z)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lm2/c;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {p1, v2, v3}, Lm2/c;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lp1/j;->m:Ljava/lang/Object;

    .line 13
    .line 14
    iput-wide v0, p0, Lp1/j;->b:J

    .line 15
    .line 16
    iput v3, p0, Lp1/j;->d:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lp1/j;->d:I

    .line 21
    .line 22
    :goto_0
    const-wide/16 v2, -0x1

    .line 23
    .line 24
    iput-wide v2, p0, Lp1/j;->a:J

    .line 25
    .line 26
    iput-wide v0, p0, Lp1/j;->c:J

    .line 27
    .line 28
    return-void
.end method

.method public abstract e(Lcom/google/android/gms/internal/ads/jr;)J
.end method

.method public f(Z)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/x;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/x;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lp1/j;->m:Ljava/lang/Object;

    .line 12
    .line 13
    iput-wide v0, p0, Lp1/j;->b:J

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput p1, p0, Lp1/j;->d:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    iput-wide v2, p0, Lp1/j;->a:J

    .line 24
    .line 25
    iput-wide v0, p0, Lp1/j;->c:J

    .line 26
    .line 27
    return-void
.end method

.method public abstract g(Lcom/google/android/gms/internal/ads/jr;JLcom/google/android/gms/internal/ads/x;)Z
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lp1/j;->c:J

    .line 2
    .line 3
    return-void
.end method
