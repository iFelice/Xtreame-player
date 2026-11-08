.class public final Lcom/google/android/gms/internal/ads/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Lcom/google/android/gms/internal/ads/e0;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b3;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/e0;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b3;->b:[Lcom/google/android/gms/internal/ads/e0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(JLcom/google/android/gms/internal/ads/jr;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x1b2

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    const v0, 0x47413934

    .line 27
    .line 28
    .line 29
    if-ne v1, v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-ne v2, v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b3;->b:[Lcom/google/android/gms/internal/ads/e0;

    .line 35
    .line 36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/H1;->H(JLcom/google/android/gms/internal/ads/jr;[Lcom/google/android/gms/internal/ads/e0;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/b3;->b:[Lcom/google/android/gms/internal/ads/e0;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_2

    .line 7
    .line 8
    invoke-virtual {p2}, LA1/I;->c()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->d()V

    .line 12
    .line 13
    .line 14
    iget v3, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/b3;->a:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/google/android/gms/internal/ads/p0;

    .line 28
    .line 29
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 30
    .line 31
    const-string v6, "application/cea-608"

    .line 32
    .line 33
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x1

    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    const-string v6, "application/cea-708"

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v7, 0x0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v8, "Invalid closed caption MIME type provided: "

    .line 55
    .line 56
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v7, v6}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lcom/google/android/gms/internal/ads/K;

    .line 64
    .line 65
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, LA1/I;->d()V

    .line 69
    .line 70
    .line 71
    iget-object v7, p2, LA1/I;->e:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v7, v6, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v5, v4, Lcom/google/android/gms/internal/ads/p0;->e:I

    .line 79
    .line 80
    iput v5, v6, Lcom/google/android/gms/internal/ads/K;->e:I

    .line 81
    .line 82
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v5, v6, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 85
    .line 86
    iget v5, v4, Lcom/google/android/gms/internal/ads/p0;->F:I

    .line 87
    .line 88
    iput v5, v6, Lcom/google/android/gms/internal/ads/K;->E:I

    .line 89
    .line 90
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 91
    .line 92
    iput-object v4, v6, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 93
    .line 94
    new-instance v4, Lcom/google/android/gms/internal/ads/p0;

    .line 95
    .line 96
    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 100
    .line 101
    .line 102
    aput-object v3, v2, v1

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    return-void
.end method
