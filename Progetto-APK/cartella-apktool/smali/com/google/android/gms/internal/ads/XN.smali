.class public final Lcom/google/android/gms/internal/ads/XN;
.super Lcom/google/android/gms/internal/ads/Ie;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Lcom/google/android/gms/internal/ads/x6;

.field public final f:Lcom/google/android/gms/internal/ads/A4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/XN;->g:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 17
    .line 18
    sget-object v2, Lcom/google/android/gms/internal/ads/J5;->a:Lcom/google/android/gms/internal/ads/J5;

    .line 19
    .line 20
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/gms/internal/ads/e5;

    .line 25
    .line 26
    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/e5;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/gms/internal/ads/uA;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/x6;

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/F3;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h3;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/A4;

    .line 37
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/i9;->y:Lcom/google/android/gms/internal/ads/i9;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(JJZLcom/google/android/gms/internal/ads/x6;Lcom/google/android/gms/internal/ads/A4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/XN;->b:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/XN;->c:J

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/XN;->d:Z

    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/XN;->e:Lcom/google/android/gms/internal/ads/x6;

    .line 14
    .line 15
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/XN;->f:Lcom/google/android/gms/internal/ads/A4;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/XN;->g:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    return p1
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lo3/r;->p(II)V

    .line 3
    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/XN;->g:Ljava/lang/Object;

    .line 8
    .line 9
    :goto_0
    move-object v2, p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/ads/T5;->b:Lcom/google/android/gms/internal/ads/T5;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/XN;->b:J

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v0, p2

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/je;->b(Ljava/lang/Object;Ljava/lang/Object;IJZ)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public final e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;
    .locals 7

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, Lo3/r;->p(II)V

    .line 3
    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/we;->m:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/XN;->f:Lcom/google/android/gms/internal/ads/A4;

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/XN;->c:J

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/XN;->e:Lcom/google/android/gms/internal/ads/x6;

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/XN;->d:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v0, p2

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/we;->a(Lcom/google/android/gms/internal/ads/x6;ZZLcom/google/android/gms/internal/ads/A4;J)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lo3/r;->p(II)V

    .line 3
    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/XN;->g:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p1
.end method
