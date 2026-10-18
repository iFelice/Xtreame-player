.class public final Lcom/google/android/gms/internal/pal/d7;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final N:Lcom/google/android/gms/internal/pal/n;


# instance fields
.field public final G:Lcom/google/android/gms/internal/pal/n;

.field public H:Lcom/google/android/gms/internal/pal/c7;

.field public I:I

.field public J:I

.field public final K:Lcom/google/android/gms/internal/pal/c7;

.field public L:Lcom/google/android/gms/internal/pal/a7;

.field public M:Lcom/google/android/gms/internal/pal/a7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/pal/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pal/d7;->N:Lcom/google/android/gms/internal/pal/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/d7;->N:Lcom/google/android/gms/internal/pal/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/pal/d7;->I:I

    .line 8
    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/pal/d7;->J:I

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/pal/c7;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/internal/pal/c7;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/pal/d7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->G:Lcom/google/android/gms/internal/pal/n;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/pal/c7;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/pal/d7;->N:Lcom/google/android/gms/internal/pal/n;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/d7;->G:Lcom/google/android/gms/internal/pal/n;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-ne v2, v1, :cond_0

    .line 11
    .line 12
    move-object v4, p1

    .line 13
    check-cast v4, Ljava/lang/Comparable;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v4, v3

    .line 17
    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/pal/c7;->L:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v2, p1, v5}, Lcom/google/android/gms/internal/pal/n;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    :goto_1
    if-nez v5, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    if-gez v5, :cond_3

    .line 34
    .line 35
    iget-object v6, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    iget-object v6, v0, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 39
    .line 40
    :goto_2
    if-nez v6, :cond_4

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_4
    move-object v0, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_5
    const/4 v5, 0x0

    .line 46
    :goto_3
    if-nez p2, :cond_6

    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_6
    const/4 p2, 0x1

    .line 50
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/d7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 51
    .line 52
    if-nez v0, :cond_9

    .line 53
    .line 54
    if-ne v2, v1, :cond_8

    .line 55
    .line 56
    instance-of v0, p1, Ljava/lang/Comparable;

    .line 57
    .line 58
    if-eqz v0, :cond_7

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, " is not Comparable"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p2

    .line 81
    :cond_8
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/pal/c7;

    .line 82
    .line 83
    iget-object v1, v4, Lcom/google/android/gms/internal/pal/c7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 84
    .line 85
    invoke-direct {v0, v3, p1, v4, v1}, Lcom/google/android/gms/internal/pal/c7;-><init>(Lcom/google/android/gms/internal/pal/c7;Ljava/lang/Object;Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 89
    .line 90
    goto :goto_6

    .line 91
    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/pal/c7;

    .line 92
    .line 93
    iget-object v2, v4, Lcom/google/android/gms/internal/pal/c7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 94
    .line 95
    invoke-direct {v1, v0, p1, v4, v2}, Lcom/google/android/gms/internal/pal/c7;-><init>(Lcom/google/android/gms/internal/pal/c7;Ljava/lang/Object;Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 96
    .line 97
    .line 98
    if-gez v5, :cond_a

    .line 99
    .line 100
    iput-object v1, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_a
    iput-object v1, v0, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 104
    .line 105
    :goto_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/pal/d7;->c(Lcom/google/android/gms/internal/pal/c7;Z)V

    .line 106
    .line 107
    .line 108
    move-object v0, v1

    .line 109
    :goto_6
    iget p1, p0, Lcom/google/android/gms/internal/pal/d7;->I:I

    .line 110
    .line 111
    add-int/2addr p1, p2

    .line 112
    iput p1, p0, Lcom/google/android/gms/internal/pal/d7;->I:I

    .line 113
    .line 114
    iget p1, p0, Lcom/google/android/gms/internal/pal/d7;->J:I

    .line 115
    .line 116
    add-int/2addr p1, p2

    .line 117
    iput p1, p0, Lcom/google/android/gms/internal/pal/d7;->J:I

    .line 118
    .line 119
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/pal/c7;Z)V
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p1, Lcom/google/android/gms/internal/pal/c7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->J:Lcom/google/android/gms/internal/pal/c7;

    .line 6
    .line 7
    iput-object v0, p2, Lcom/google/android/gms/internal/pal/c7;->J:Lcom/google/android/gms/internal/pal/c7;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->J:Lcom/google/android/gms/internal/pal/c7;

    .line 10
    .line 11
    iput-object p2, v0, Lcom/google/android/gms/internal/pal/c7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 12
    .line 13
    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p2, :cond_6

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget v1, p2, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 26
    .line 27
    iget v4, v0, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 28
    .line 29
    if-le v1, v4, :cond_1

    .line 30
    .line 31
    :goto_0
    iget-object v0, p2, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 32
    .line 33
    move-object v5, v0

    .line 34
    move-object v0, p2

    .line 35
    move-object p2, v5

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    iget-object p2, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 40
    .line 41
    move-object v5, v0

    .line 42
    move-object v0, p2

    .line 43
    move-object p2, v5

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v0, p2

    .line 48
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/pal/d7;->b(Lcom/google/android/gms/internal/pal/c7;Z)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    iget v1, p2, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 56
    .line 57
    iput-object p2, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 58
    .line 59
    iput-object v0, p2, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 60
    .line 61
    iput-object v3, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const/4 v1, 0x0

    .line 65
    :goto_2
    iget-object p2, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    iget v2, p2, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 70
    .line 71
    iput-object p2, v0, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 72
    .line 73
    iput-object v0, p2, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 74
    .line 75
    iput-object v3, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 76
    .line 77
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    iput p2, v0, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 84
    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pal/d7;->d(Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    if-eqz p2, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/pal/d7;->d(Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 92
    .line 93
    .line 94
    iput-object v3, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    if-eqz v0, :cond_8

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pal/d7;->d(Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/pal/d7;->d(Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/pal/d7;->c(Lcom/google/android/gms/internal/pal/c7;Z)V

    .line 109
    .line 110
    .line 111
    iget p1, p0, Lcom/google/android/gms/internal/pal/d7;->I:I

    .line 112
    .line 113
    add-int/lit8 p1, p1, -0x1

    .line 114
    .line 115
    iput p1, p0, Lcom/google/android/gms/internal/pal/d7;->I:I

    .line 116
    .line 117
    iget p1, p0, Lcom/google/android/gms/internal/pal/d7;->J:I

    .line 118
    .line 119
    add-int/lit8 p1, p1, 0x1

    .line 120
    .line 121
    iput p1, p0, Lcom/google/android/gms/internal/pal/d7;->J:I

    .line 122
    .line 123
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/pal/c7;Z)V
    .locals 7

    .line 1
    :goto_0
    if-eqz p1, :cond_e

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v3, v0, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_1
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget v4, v1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    const/4 v4, 0x0

    .line 20
    :goto_2
    sub-int v5, v3, v4

    .line 21
    .line 22
    const/4 v6, -0x2

    .line 23
    if-ne v5, v6, :cond_6

    .line 24
    .line 25
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 26
    .line 27
    iget-object v3, v1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget v3, v3, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    const/4 v3, 0x0

    .line 35
    :goto_3
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget v2, v0, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 38
    .line 39
    :cond_3
    sub-int/2addr v2, v3

    .line 40
    const/4 v0, -0x1

    .line 41
    if-eq v2, v0, :cond_5

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/pal/d7;->f(Lcom/google/android/gms/internal/pal/c7;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pal/d7;->e(Lcom/google/android/gms/internal/pal/c7;)V

    .line 52
    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pal/d7;->e(Lcom/google/android/gms/internal/pal/c7;)V

    .line 56
    .line 57
    .line 58
    :goto_5
    if-nez p2, :cond_e

    .line 59
    .line 60
    goto :goto_9

    .line 61
    :cond_6
    const/4 v1, 0x2

    .line 62
    const/4 v6, 0x1

    .line 63
    if-ne v5, v1, :cond_b

    .line 64
    .line 65
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 66
    .line 67
    iget-object v3, v0, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 68
    .line 69
    if-eqz v3, :cond_7

    .line 70
    .line 71
    iget v3, v3, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 72
    .line 73
    goto :goto_6

    .line 74
    :cond_7
    const/4 v3, 0x0

    .line 75
    :goto_6
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget v2, v1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 78
    .line 79
    :cond_8
    sub-int/2addr v2, v3

    .line 80
    if-eq v2, v6, :cond_a

    .line 81
    .line 82
    if-nez v2, :cond_9

    .line 83
    .line 84
    if-nez p2, :cond_9

    .line 85
    .line 86
    goto :goto_7

    .line 87
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pal/d7;->e(Lcom/google/android/gms/internal/pal/c7;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pal/d7;->f(Lcom/google/android/gms/internal/pal/c7;)V

    .line 91
    .line 92
    .line 93
    goto :goto_8

    .line 94
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pal/d7;->f(Lcom/google/android/gms/internal/pal/c7;)V

    .line 95
    .line 96
    .line 97
    :goto_8
    if-eqz p2, :cond_d

    .line 98
    .line 99
    goto :goto_a

    .line 100
    :cond_b
    if-nez v5, :cond_c

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    iput v3, p1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 105
    .line 106
    if-eqz p2, :cond_d

    .line 107
    .line 108
    goto :goto_a

    .line 109
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    add-int/2addr v0, v6

    .line 114
    iput v0, p1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 115
    .line 116
    if-nez p2, :cond_d

    .line 117
    .line 118
    goto :goto_a

    .line 119
    :cond_d
    :goto_9
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_e
    :goto_a
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/pal/d7;->I:I

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/pal/d7;->J:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/pal/d7;->J:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 14
    .line 15
    iput-object v0, v0, Lcom/google/android/gms/internal/pal/c7;->K:Lcom/google/android/gms/internal/pal/c7;

    .line 16
    .line 17
    iput-object v0, v0, Lcom/google/android/gms/internal/pal/c7;->J:Lcom/google/android/gms/internal/pal/c7;

    .line 18
    .line 19
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pal/d7;->a(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/pal/c7;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    return v0
.end method

.method public final d(Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p1, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object v0, p2, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 9
    .line 10
    :cond_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 13
    .line 14
    if-ne v1, p1, :cond_1

    .line 15
    .line 16
    iput-object p2, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput-object p2, v0, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/d7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 23
    .line 24
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/pal/c7;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 8
    .line 9
    iput-object v2, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iput-object p1, v2, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/pal/d7;->d(Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 19
    .line 20
    iput-object v1, p1, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, v0, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget v2, v2, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v2, 0x0

    .line 35
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    iget v4, v3, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 46
    .line 47
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    iput p1, v1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 54
    .line 55
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->L:Lcom/google/android/gms/internal/pal/a7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/a7;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/pal/a7;-><init>(Lcom/google/android/gms/internal/pal/d7;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->L:Lcom/google/android/gms/internal/pal/a7;

    .line 13
    .line 14
    return-object v0
.end method

.method public final f(Lcom/google/android/gms/internal/pal/c7;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 8
    .line 9
    iput-object v3, p1, Lcom/google/android/gms/internal/pal/c7;->H:Lcom/google/android/gms/internal/pal/c7;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iput-object p1, v3, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pal/d7;->d(Lcom/google/android/gms/internal/pal/c7;Lcom/google/android/gms/internal/pal/c7;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lcom/google/android/gms/internal/pal/c7;->I:Lcom/google/android/gms/internal/pal/c7;

    .line 19
    .line 20
    iput-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->G:Lcom/google/android/gms/internal/pal/c7;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v1, v1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget v3, v3, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v3, 0x0

    .line 35
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    iput v1, p1, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget v4, v2, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 46
    .line 47
    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    iput p1, v0, Lcom/google/android/gms/internal/pal/c7;->N:I

    .line 54
    .line 55
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/pal/d7;->a(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/pal/c7;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/c7;->M:Ljava/lang/Object;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->M:Lcom/google/android/gms/internal/pal/a7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pal/a7;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/pal/a7;-><init>(Lcom/google/android/gms/internal/pal/d7;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/d7;->M:Lcom/google/android/gms/internal/pal/a7;

    .line 13
    .line 14
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/pal/d7;->a(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/pal/c7;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/c7;->M:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p1, Lcom/google/android/gms/internal/pal/c7;->M:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string p2, "key == null"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/pal/d7;->a(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/pal/c7;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/pal/d7;->b(Lcom/google/android/gms/internal/pal/c7;Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/c7;->M:Ljava/lang/Object;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/pal/d7;->I:I

    return v0
.end method
