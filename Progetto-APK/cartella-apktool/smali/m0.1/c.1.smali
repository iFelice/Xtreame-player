.class public final Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lm0/c;

.field public static final d:Lm0/b;


# instance fields
.field public final a:I

.field public final b:[Lm0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lm0/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lm0/b;

    .line 5
    .line 6
    invoke-direct {v0, v2}, Lm0/c;-><init>([Lm0/b;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lm0/c;->c:Lm0/c;

    .line 10
    .line 11
    new-instance v0, Lm0/b;

    .line 12
    .line 13
    new-array v8, v1, [I

    .line 14
    .line 15
    new-array v9, v1, [Lm0/I;

    .line 16
    .line 17
    new-array v10, v1, [J

    .line 18
    .line 19
    new-array v14, v1, [Ljava/lang/String;

    .line 20
    .line 21
    const/4 v7, -0x1

    .line 22
    const/4 v15, 0x0

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    const/4 v6, -0x1

    .line 26
    const-wide/16 v11, 0x0

    .line 27
    .line 28
    const/4 v13, 0x0

    .line 29
    move-object v3, v0

    .line 30
    invoke-direct/range {v3 .. v15}, Lm0/b;-><init>(JII[I[Lm0/I;[JJZ[Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lm0/b;->f:[I

    .line 34
    .line 35
    array-length v3, v2

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-static {v9, v3, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lm0/b;->g:[J

    .line 49
    .line 50
    array-length v2, v1

    .line 51
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-static {v11, v2, v3, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lm0/b;->e:[Lm0/I;

    .line 68
    .line 69
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v10, v1

    .line 74
    check-cast v10, [Lm0/I;

    .line 75
    .line 76
    iget-object v1, v0, Lm0/b;->h:[Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    move-object v15, v1

    .line 83
    check-cast v15, [Ljava/lang/String;

    .line 84
    .line 85
    new-instance v1, Lm0/b;

    .line 86
    .line 87
    iget-boolean v14, v0, Lm0/b;->j:Z

    .line 88
    .line 89
    iget-boolean v2, v0, Lm0/b;->k:Z

    .line 90
    .line 91
    iget-wide v5, v0, Lm0/b;->a:J

    .line 92
    .line 93
    iget v8, v0, Lm0/b;->c:I

    .line 94
    .line 95
    iget-wide v12, v0, Lm0/b;->i:J

    .line 96
    .line 97
    move-object v4, v1

    .line 98
    move/from16 v16, v2

    .line 99
    .line 100
    invoke-direct/range {v4 .. v16}, Lm0/b;-><init>(JII[I[Lm0/I;[JJZ[Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    sput-object v1, Lm0/c;->d:Lm0/b;

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 107
    .line 108
    .line 109
    const/4 v0, 0x2

    .line 110
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x3

    .line 114
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x4

    .line 118
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public constructor <init>([Lm0/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    iput v0, p0, Lm0/c;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Lm0/c;->b:[Lm0/b;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(I)Lm0/b;
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lm0/c;->d:Lm0/b;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lm0/c;->b:[Lm0/b;

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lm0/c;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lm0/c;

    .line 18
    .line 19
    iget v2, p0, Lm0/c;->a:I

    .line 20
    .line 21
    iget v3, p1, Lm0/c;->a:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lm0/c;->b:[Lm0/b;

    .line 26
    .line 27
    iget-object p1, p1, Lm0/c;->b:[Lm0/b;

    .line 28
    .line 29
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lm0/c;->a:I

    .line 2
    .line 3
    mul-int/lit16 v0, v0, 0x3c1

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    long-to-int v2, v1

    .line 8
    add-int/2addr v0, v2

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    long-to-int v2, v1

    .line 17
    add-int/2addr v0, v2

    .line 18
    mul-int/lit16 v0, v0, 0x3c1

    .line 19
    .line 20
    iget-object v1, p0, Lm0/c;->b:[Lm0/b;

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lm0/c;->b:[Lm0/b;

    .line 11
    .line 12
    array-length v4, v3

    .line 13
    const-string v5, "])"

    .line 14
    .line 15
    if-ge v2, v4, :cond_8

    .line 16
    .line 17
    const-string v4, "adGroup(timeUs="

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    aget-object v4, v3, v2

    .line 23
    .line 24
    iget-wide v6, v4, Lm0/b;->a:J

    .line 25
    .line 26
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, ", ads=["

    .line 30
    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_1
    aget-object v6, v3, v2

    .line 36
    .line 37
    iget-object v6, v6, Lm0/b;->f:[I

    .line 38
    .line 39
    array-length v6, v6

    .line 40
    const-string v7, ", "

    .line 41
    .line 42
    if-ge v4, v6, :cond_6

    .line 43
    .line 44
    const-string v6, "ad(state="

    .line 45
    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    aget-object v6, v3, v2

    .line 50
    .line 51
    iget-object v6, v6, Lm0/b;->f:[I

    .line 52
    .line 53
    aget v6, v6, v4

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    if-eqz v6, :cond_4

    .line 57
    .line 58
    if-eq v6, v8, :cond_3

    .line 59
    .line 60
    const/4 v9, 0x2

    .line 61
    if-eq v6, v9, :cond_2

    .line 62
    .line 63
    const/4 v9, 0x3

    .line 64
    if-eq v6, v9, :cond_1

    .line 65
    .line 66
    const/4 v9, 0x4

    .line 67
    if-eq v6, v9, :cond_0

    .line 68
    .line 69
    const/16 v6, 0x3f

    .line 70
    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_0
    const/16 v6, 0x21

    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_1
    const/16 v6, 0x50

    .line 82
    .line 83
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const/16 v6, 0x53

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const/16 v6, 0x52

    .line 94
    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/16 v6, 0x5f

    .line 100
    .line 101
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :goto_2
    const-string v6, ", durationUs="

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    aget-object v6, v3, v2

    .line 110
    .line 111
    iget-object v6, v6, Lm0/b;->g:[J

    .line 112
    .line 113
    aget-wide v9, v6, v4

    .line 114
    .line 115
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 v6, 0x29

    .line 119
    .line 120
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    aget-object v6, v3, v2

    .line 124
    .line 125
    iget-object v6, v6, Lm0/b;->f:[I

    .line 126
    .line 127
    array-length v6, v6

    .line 128
    sub-int/2addr v6, v8

    .line 129
    if-ge v4, v6, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const/4 v3, -0x1

    .line 141
    if-ge v2, v3, :cond_7

    .line 142
    .line 143
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0
.end method
