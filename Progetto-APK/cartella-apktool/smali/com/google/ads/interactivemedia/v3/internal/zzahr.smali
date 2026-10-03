.class public final Lcom/google/ads/interactivemedia/v3/internal/zzahr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zza:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    return-void
.end method

.method public static varargs zza(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "object"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p0, v1, v0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zze(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzahr;Z[Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p0, v1, v0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zze(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzahr;Z[Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget p0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 34
    .line 35
    return p0
.end method

.method public static zzb()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zza:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    return-object v0
.end method

.method private static zze(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzahr;Z[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaht;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaht;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    if-nez p3, :cond_2

    .line 25
    .line 26
    new-instance p3, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zza:Ljava/lang/ThreadLocal;

    .line 32
    .line 33
    invoke-virtual {v0, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :cond_2
    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzaht;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaht;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zzahq;

    .line 52
    .line 53
    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzahq;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {p3}, Lc4/J0;->i(Lcom/google/ads/interactivemedia/v3/internal/zzahq;)Ljava/util/Comparator;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {p1, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    const/4 p3, 0x1

    .line 64
    invoke-static {p1, p3}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 65
    .line 66
    .line 67
    array-length p3, p1

    .line 68
    const/4 v0, 0x0

    .line 69
    :goto_2
    if-ge v0, p3, :cond_4

    .line 70
    .line 71
    aget-object v1, p1, v0

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {p4, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzahl;->zza([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, "$"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_3

    .line 114
    .line 115
    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/zzahs;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_3

    .line 122
    .line 123
    invoke-static {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzahu;->zza(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzd(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzahr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzf(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :goto_3
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzf(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method private static zzf(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzaht;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaht;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zza:Ljava/lang/ThreadLocal;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzahr;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzahr;

    .line 12
    .line 13
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 14
    .line 15
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 16
    .line 17
    if-ne v1, p1, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    return v0
.end method

.method public final zzc(J)Lcom/google/ads/interactivemedia/v3/internal/zzahr;
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    mul-int/lit8 v0, v0, 0x25

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    return-object p0
.end method

.method public final zzd(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzahr;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x25

    .line 6
    .line 7
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 8
    .line 9
    goto/16 :goto_9

    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzahm;->zza(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_9

    .line 16
    .line 17
    instance-of v0, p1, [J

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, [J

    .line 23
    .line 24
    array-length v0, p1

    .line 25
    :goto_0
    if-ge v1, v0, :cond_a

    .line 26
    .line 27
    aget-wide v2, p1, v1

    .line 28
    .line 29
    invoke-virtual {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzc(J)Lcom/google/ads/interactivemedia/v3/internal/zzahr;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    instance-of v0, p1, [I

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    check-cast p1, [I

    .line 40
    .line 41
    array-length v0, p1

    .line 42
    :goto_1
    if-ge v1, v0, :cond_a

    .line 43
    .line 44
    aget v2, p1, v1

    .line 45
    .line 46
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 47
    .line 48
    mul-int/lit8 v3, v3, 0x25

    .line 49
    .line 50
    add-int/2addr v3, v2

    .line 51
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    instance-of v0, p1, [S

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    check-cast p1, [S

    .line 61
    .line 62
    array-length v0, p1

    .line 63
    :goto_2
    if-ge v1, v0, :cond_a

    .line 64
    .line 65
    aget-short v2, p1, v1

    .line 66
    .line 67
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 68
    .line 69
    mul-int/lit8 v3, v3, 0x25

    .line 70
    .line 71
    add-int/2addr v3, v2

    .line 72
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    instance-of v0, p1, [C

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    check-cast p1, [C

    .line 82
    .line 83
    array-length v0, p1

    .line 84
    :goto_3
    if-ge v1, v0, :cond_a

    .line 85
    .line 86
    aget-char v2, p1, v1

    .line 87
    .line 88
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 89
    .line 90
    mul-int/lit8 v3, v3, 0x25

    .line 91
    .line 92
    add-int/2addr v3, v2

    .line 93
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    instance-of v0, p1, [B

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    check-cast p1, [B

    .line 103
    .line 104
    array-length v0, p1

    .line 105
    :goto_4
    if-ge v1, v0, :cond_a

    .line 106
    .line 107
    aget-byte v2, p1, v1

    .line 108
    .line 109
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 110
    .line 111
    mul-int/lit8 v3, v3, 0x25

    .line 112
    .line 113
    add-int/2addr v3, v2

    .line 114
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    instance-of v0, p1, [D

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    check-cast p1, [D

    .line 124
    .line 125
    array-length v0, p1

    .line 126
    :goto_5
    if-ge v1, v0, :cond_a

    .line 127
    .line 128
    aget-wide v2, p1, v1

    .line 129
    .line 130
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzc(J)Lcom/google/ads/interactivemedia/v3/internal/zzahr;

    .line 135
    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_6
    instance-of v0, p1, [F

    .line 141
    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    check-cast p1, [F

    .line 145
    .line 146
    array-length v0, p1

    .line 147
    :goto_6
    if-ge v1, v0, :cond_a

    .line 148
    .line 149
    aget v2, p1, v1

    .line 150
    .line 151
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 152
    .line 153
    mul-int/lit8 v3, v3, 0x25

    .line 154
    .line 155
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    add-int/2addr v2, v3

    .line 160
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 161
    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_7
    instance-of v0, p1, [Z

    .line 166
    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    check-cast p1, [Z

    .line 170
    .line 171
    array-length v0, p1

    .line 172
    :goto_7
    if-ge v1, v0, :cond_a

    .line 173
    .line 174
    aget-boolean v2, p1, v1

    .line 175
    .line 176
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 177
    .line 178
    mul-int/lit8 v3, v3, 0x25

    .line 179
    .line 180
    xor-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    add-int/2addr v3, v2

    .line 183
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 184
    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    .line 189
    .line 190
    array-length v0, p1

    .line 191
    :goto_8
    if-ge v1, v0, :cond_a

    .line 192
    .line 193
    aget-object v2, p1, v1

    .line 194
    .line 195
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzd(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzahr;

    .line 196
    .line 197
    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_9
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 202
    .line 203
    mul-int/lit8 v0, v0, 0x25

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    add-int/2addr p1, v0

    .line 210
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzahr;->zzb:I

    .line 211
    .line 212
    :cond_a
    :goto_9
    return-object p0
.end method
