.class public final Lcom/google/android/gms/internal/ads/sL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/je;

.field public b:Lcom/google/android/gms/internal/ads/uA;

.field public c:Lcom/google/android/gms/internal/ads/UA;

.field public d:Lcom/google/android/gms/internal/ads/wN;

.field public e:Lcom/google/android/gms/internal/ads/wN;

.field public f:Lcom/google/android/gms/internal/ads/wN;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/je;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sL;->a:Lcom/google/android/gms/internal/ads/je;

    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 7
    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sL;->b:Lcom/google/android/gms/internal/ads/uA;

    .line 11
    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/UA;->M:Lcom/google/android/gms/internal/ads/UA;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sL;->c:Lcom/google/android/gms/internal/ads/UA;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/Vc;Lcom/google/android/gms/internal/ads/uA;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/wN;
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->zze()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Ie;->f(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->p()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v0, v1, p3, v5}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->zzk()J

    .line 41
    .line 42
    .line 43
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-ge v5, p3, :cond_4

    .line 53
    .line 54
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Lcom/google/android/gms/internal/ads/wN;

    .line 59
    .line 60
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->p()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->zzb()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->zzc()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-static {p3, v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/sL;->d(Lcom/google/android/gms/internal/ads/wN;Ljava/lang/Object;ZII)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    return-object p3

    .line 79
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    if-eqz p2, :cond_5

    .line 89
    .line 90
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->p()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->zzb()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Vc;->zzc()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-static {p2, v2, p1, p3, p0}, Lcom/google/android/gms/internal/ads/sL;->d(Lcom/google/android/gms/internal/ads/wN;Ljava/lang/Object;ZII)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    return-object p2

    .line 109
    :cond_5
    return-object v3
.end method

.method public static d(Lcom/google/android/gms/internal/ads/wN;Ljava/lang/Object;ZII)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    if-ne v1, p3, :cond_3

    .line 17
    .line 18
    iget p0, p0, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 19
    .line 20
    if-ne p0, p4, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    return v0

    .line 25
    :cond_2
    const/4 p2, -0x1

    .line 26
    if-ne v1, p2, :cond_3

    .line 27
    .line 28
    iget p0, p0, Lcom/google/android/gms/internal/ads/wN;->e:I

    .line 29
    .line 30
    if-ne p0, p2, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/Ie;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/sL;->c:Lcom/google/android/gms/internal/ads/UA;

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/UA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Lcom/google/android/gms/internal/ads/Ie;

    .line 24
    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/f8;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/Ie;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/f8;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->b:Lcom/google/android/gms/internal/ads/uA;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->e:Lcom/google/android/gms/internal/ads/wN;

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/sL;->b(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/Ie;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->f:Lcom/google/android/gms/internal/ads/wN;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sL;->e:Lcom/google/android/gms/internal/ads/wN;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/H1;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->f:Lcom/google/android/gms/internal/ads/wN;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/sL;->b(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/Ie;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sL;->e:Lcom/google/android/gms/internal/ads/wN;

    .line 39
    .line 40
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/H1;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sL;->f:Lcom/google/android/gms/internal/ads/wN;

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/H1;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/sL;->b(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/Ie;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->b:Lcom/google/android/gms/internal/ads/uA;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ge v2, v1, :cond_2

    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->b:Lcom/google/android/gms/internal/ads/uA;

    .line 71
    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/google/android/gms/internal/ads/wN;

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/sL;->b(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/Ie;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->b:Lcom/google/android/gms/internal/ads/uA;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/uA;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 95
    .line 96
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/sL;->b(Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/Ie;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->f()Lcom/google/android/gms/internal/ads/UA;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sL;->c:Lcom/google/android/gms/internal/ads/UA;

    .line 104
    .line 105
    return-void
.end method
