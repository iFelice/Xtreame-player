.class public Lcom/google/android/gms/cast/CastDevice;
.super LM3/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/net/InetAddress;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:I

.field public final N:Ljava/util/List;

.field public final O:I

.field public final P:I

.field public final Q:Ljava/lang/String;

.field public final R:Ljava/lang/String;

.field public final S:I

.field public final T:Ljava/lang/String;

.field public final U:[B

.field public final V:Ljava/lang/String;

.field public final W:Z

.field public final X:LH3/z;

.field public final Y:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LC3/H;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LC3/H;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;ZLH3/z;Ljava/lang/Integer;)V
    .locals 6

    .line 1
    move-object v1, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    move-object v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, p1

    .line 12
    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    move-object v0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v0, p2

    .line 19
    :goto_1
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->H:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->I:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    iget-object v3, v1, Lcom/google/android/gms/cast/CastDevice;->H:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "Unable to convert host address ("

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ") to ipaddress: "

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "CastDevice"

    .line 64
    .line 65
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_2
    if-nez p3, :cond_3

    .line 69
    .line 70
    move-object v0, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move-object v0, p3

    .line 73
    :goto_3
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 74
    .line 75
    if-nez p4, :cond_4

    .line 76
    .line 77
    move-object v0, v2

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move-object v0, p4

    .line 80
    :goto_4
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->K:Ljava/lang/String;

    .line 81
    .line 82
    if-nez p5, :cond_5

    .line 83
    .line 84
    move-object v0, v2

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    move-object v0, p5

    .line 87
    :goto_5
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->L:Ljava/lang/String;

    .line 88
    .line 89
    move v3, p6

    .line 90
    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->M:I

    .line 91
    .line 92
    if-nez p7, :cond_6

    .line 93
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_6
    move-object v0, p7

    .line 101
    :goto_6
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->N:Ljava/util/List;

    .line 102
    .line 103
    move v3, p8

    .line 104
    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->O:I

    .line 105
    .line 106
    move v3, p9

    .line 107
    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->P:I

    .line 108
    .line 109
    if-nez p10, :cond_7

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_7
    move-object/from16 v2, p10

    .line 113
    .line 114
    :goto_7
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->Q:Ljava/lang/String;

    .line 115
    .line 116
    move-object/from16 v2, p11

    .line 117
    .line 118
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->R:Ljava/lang/String;

    .line 119
    .line 120
    move/from16 v2, p12

    .line 121
    .line 122
    iput v2, v1, Lcom/google/android/gms/cast/CastDevice;->S:I

    .line 123
    .line 124
    move-object/from16 v2, p13

    .line 125
    .line 126
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->T:Ljava/lang/String;

    .line 127
    .line 128
    move-object/from16 v2, p14

    .line 129
    .line 130
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->U:[B

    .line 131
    .line 132
    move-object/from16 v2, p15

    .line 133
    .line 134
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->V:Ljava/lang/String;

    .line 135
    .line 136
    move/from16 v2, p16

    .line 137
    .line 138
    iput-boolean v2, v1, Lcom/google/android/gms/cast/CastDevice;->W:Z

    .line 139
    .line 140
    move-object/from16 v2, p17

    .line 141
    .line 142
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->X:LH3/z;

    .line 143
    .line 144
    move-object/from16 v2, p18

    .line 145
    .line 146
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->Y:Ljava/lang/Integer;

    .line 147
    .line 148
    return-void
.end method

.method public static i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Lcom/google/android/gms/cast/CastDevice;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/google/android/gms/cast/CastDevice;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/CastDevice;

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
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v1, :cond_3

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    return v2

    .line 23
    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->I:Ljava/net/InetAddress;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->I:Ljava/net/InetAddress;

    .line 34
    .line 35
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->K:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->K:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->L:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->L:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_6

    .line 70
    .line 71
    iget v4, p0, Lcom/google/android/gms/cast/CastDevice;->M:I

    .line 72
    .line 73
    iget v5, p1, Lcom/google/android/gms/cast/CastDevice;->M:I

    .line 74
    .line 75
    if-ne v4, v5, :cond_6

    .line 76
    .line 77
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->N:Ljava/util/List;

    .line 78
    .line 79
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->N:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {v6, v7}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_6

    .line 86
    .line 87
    iget v6, p0, Lcom/google/android/gms/cast/CastDevice;->O:I

    .line 88
    .line 89
    iget v7, p1, Lcom/google/android/gms/cast/CastDevice;->O:I

    .line 90
    .line 91
    if-ne v6, v7, :cond_6

    .line 92
    .line 93
    iget v6, p0, Lcom/google/android/gms/cast/CastDevice;->P:I

    .line 94
    .line 95
    iget v7, p1, Lcom/google/android/gms/cast/CastDevice;->P:I

    .line 96
    .line 97
    if-ne v6, v7, :cond_6

    .line 98
    .line 99
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->Q:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->Q:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v6, v7}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_6

    .line 108
    .line 109
    iget v6, p0, Lcom/google/android/gms/cast/CastDevice;->S:I

    .line 110
    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    iget v7, p1, Lcom/google/android/gms/cast/CastDevice;->S:I

    .line 116
    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-static {v6, v7}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_6

    .line 126
    .line 127
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->T:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->T:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v6, v7}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_6

    .line 136
    .line 137
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->R:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v7, p1, Lcom/google/android/gms/cast/CastDevice;->R:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v6, v7}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_6

    .line 146
    .line 147
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_6

    .line 152
    .line 153
    if-ne v4, v5, :cond_6

    .line 154
    .line 155
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->U:[B

    .line 156
    .line 157
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->U:[B

    .line 158
    .line 159
    if-nez v3, :cond_4

    .line 160
    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    :cond_4
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->V:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->V:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_6

    .line 178
    .line 179
    iget-boolean v1, p0, Lcom/google/android/gms/cast/CastDevice;->W:Z

    .line 180
    .line 181
    iget-boolean v3, p1, Lcom/google/android/gms/cast/CastDevice;->W:Z

    .line 182
    .line 183
    if-ne v1, v3, :cond_6

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->n()LH3/z;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->n()LH3/z;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {v1, p1}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_6

    .line 198
    .line 199
    return v0

    .line 200
    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final l(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->O:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n()LH3/z;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->X:LH3/z;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/CastDevice;->l(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x40

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/google/android/gms/cast/CastDevice;->l(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :cond_0
    new-instance v0, LH3/z;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, v1, v2, v2}, LH3/z;-><init>(IZZ)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-nez v4, :cond_2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-gt v4, v1, :cond_1

    .line 18
    .line 19
    if-ne v4, v1, :cond_0

    .line 20
    .line 21
    const-string v3, "xx"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v3, "x"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    add-int/lit8 v6, v4, -0x1

    .line 32
    .line 33
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    add-int/lit8 v4, v4, -0x2

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v6, 0x3

    .line 52
    new-array v6, v6, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v5, v6, v0

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    aput-object v4, v6, v0

    .line 58
    .line 59
    aput-object v3, v6, v1

    .line 60
    .line 61
    const-string v0, "%c%d%c"

    .line 62
    .line 63
    invoke-static {v2, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :cond_2
    :goto_0
    const-string v0, "\""

    .line 68
    .line 69
    const-string v1, "\" ("

    .line 70
    .line 71
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 76
    .line 77
    const-string v2, ")"

    .line 78
    .line 79
    invoke-static {v0, v1, v2}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {v0, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->H:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->J:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-static {p1, v2, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->K:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->L:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->M:I

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->N:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    invoke-static {p1, v3, v1}, Lf/b;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x9

    .line 58
    .line 59
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->O:I

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    const/16 v1, 0xa

    .line 68
    .line 69
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->P:I

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0xb

    .line 78
    .line 79
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->Q:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0xc

    .line 85
    .line 86
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->R:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/16 v1, 0xd

    .line 92
    .line 93
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 94
    .line 95
    .line 96
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->S:I

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    const/16 v1, 0xe

    .line 102
    .line 103
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->T:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/16 v1, 0xf

    .line 109
    .line 110
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->U:[B

    .line 111
    .line 112
    invoke-static {p1, v1, v3}, Lf/b;->K(Landroid/os/Parcel;I[B)V

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x10

    .line 116
    .line 117
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->V:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/16 v1, 0x11

    .line 123
    .line 124
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 125
    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/google/android/gms/cast/CastDevice;->W:Z

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    .line 131
    .line 132
    const/16 v1, 0x12

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->n()LH3/z;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {p1, v1, v3, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->Y:Ljava/lang/Integer;

    .line 142
    .line 143
    if-nez p2, :cond_0

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    const/16 v1, 0x13

    .line 147
    .line 148
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    .line 157
    .line 158
    :goto_0
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
