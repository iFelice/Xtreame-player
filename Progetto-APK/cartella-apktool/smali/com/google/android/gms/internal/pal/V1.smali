.class public final Lcom/google/android/gms/internal/pal/V1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# instance fields
.field public final h:Lcom/google/android/gms/internal/pal/F1;

.field public final i:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;ILcom/google/android/gms/internal/pal/F1;)V
    .locals 7

    .line 1
    const/16 v6, 0x35

    .line 2
    .line 3
    const-string v2, "mkunJHFc5vhTAVOcsaNSYx7OvFB6slgbORGrA/joIDO0IYq5rQvDcAbp2AI6CPUh"

    .line 4
    .line 5
    const-string v3, "k8GEQUoJxJPI/0jAlfeUix8QD7WaaXAfMcSQAzrpgrU="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/pal/V1;->h:Lcom/google/android/gms/internal/pal/F1;

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    .line 18
    iget-wide p1, p4, Lcom/google/android/gms/internal/pal/F1;->R:J

    .line 19
    .line 20
    const-wide/16 v0, -0x2

    .line 21
    .line 22
    cmp-long p3, p1, v0

    .line 23
    .line 24
    if-gtz p3, :cond_1

    .line 25
    .line 26
    iget-object p1, p4, Lcom/google/android/gms/internal/pal/F1;->N:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/view/View;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_1

    .line 39
    .line 40
    const-wide/16 p1, -0x3

    .line 41
    .line 42
    iput-wide p1, p4, Lcom/google/android/gms/internal/pal/F1;->R:J

    .line 43
    .line 44
    :cond_1
    iget-wide p1, p4, Lcom/google/android/gms/internal/pal/F1;->R:J

    .line 45
    .line 46
    iput-wide p1, p0, Lcom/google/android/gms/internal/pal/V1;->i:J

    .line 47
    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/V1;->h:Lcom/google/android/gms/internal/pal/F1;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/android/gms/internal/pal/V1;->i:J

    .line 9
    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v2, v3, v0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 31
    .line 32
    iget-boolean v4, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 37
    .line 38
    .line 39
    iput-boolean v0, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 40
    .line 41
    :cond_0
    iget-object v0, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 42
    .line 43
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/pal/m0;->z(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
