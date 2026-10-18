.class public final LC3/r;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LC3/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public G:Lcom/google/android/gms/cast/MediaInfo;

.field public H:J

.field public I:I

.field public J:D

.field public K:I

.field public L:I

.field public M:J

.field public N:J

.field public O:D

.field public P:Z

.field public Q:[J

.field public R:I

.field public S:I

.field public T:Ljava/lang/String;

.field public U:Lorg/json/JSONObject;

.field public V:I

.field public final W:Ljava/util/ArrayList;

.field public X:Z

.field public Y:LC3/c;

.field public Z:LC3/v;

.field public a0:LC3/j;

.field public b0:LC3/n;

.field public c0:Z

.field public final d0:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "The log tag cannot be null or empty."

    .line 2
    .line 3
    const-string v1, "MediaStatus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    new-instance v0, LC3/H;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-direct {v0, v1}, LC3/H;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, LC3/r;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLC3/c;LC3/v;LC3/j;LC3/n;)V
    .locals 6

    .line 1
    move-object v0, p0

    move-object/from16 v1, p19

    move-object/from16 v2, p21

    move-object/from16 v3, p26

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, LC3/r;->W:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, LC3/r;->d0:Landroid/util/SparseArray;

    move-object v4, p1

    iput-object v4, v0, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    move-wide v4, p2

    iput-wide v4, v0, LC3/r;->H:J

    move v4, p4

    iput v4, v0, LC3/r;->I:I

    move-wide v4, p5

    iput-wide v4, v0, LC3/r;->J:D

    move v4, p7

    iput v4, v0, LC3/r;->K:I

    move v4, p8

    iput v4, v0, LC3/r;->L:I

    move-wide v4, p9

    iput-wide v4, v0, LC3/r;->M:J

    move-wide/from16 v4, p11

    iput-wide v4, v0, LC3/r;->N:J

    move-wide/from16 v4, p13

    iput-wide v4, v0, LC3/r;->O:D

    move/from16 v4, p15

    iput-boolean v4, v0, LC3/r;->P:Z

    move-object/from16 v4, p16

    iput-object v4, v0, LC3/r;->Q:[J

    move/from16 v4, p17

    iput v4, v0, LC3/r;->R:I

    move/from16 v4, p18

    iput v4, v0, LC3/r;->S:I

    iput-object v1, v0, LC3/r;->T:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v5, v0, LC3/r;->T:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, LC3/r;->U:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move/from16 v1, p20

    goto :goto_1

    .line 7
    :catch_0
    iput-object v4, v0, LC3/r;->U:Lorg/json/JSONObject;

    iput-object v4, v0, LC3/r;->T:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v4, v0, LC3/r;->U:Lorg/json/JSONObject;

    goto :goto_0

    .line 8
    :goto_1
    iput v1, v0, LC3/r;->V:I

    if-eqz v2, :cond_1

    .line 9
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0, v2}, LC3/r;->l(Ljava/util/ArrayList;)V

    :cond_1
    move/from16 v1, p22

    iput-boolean v1, v0, LC3/r;->X:Z

    move-object/from16 v1, p23

    iput-object v1, v0, LC3/r;->Y:LC3/c;

    move-object/from16 v1, p24

    iput-object v1, v0, LC3/r;->Z:LC3/v;

    move-object/from16 v1, p25

    iput-object v1, v0, LC3/r;->a0:LC3/j;

    iput-object v3, v0, LC3/r;->b0:LC3/n;

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    .line 11
    iget-boolean v2, v3, LC3/n;->P:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 12
    :cond_2
    iput-boolean v1, v0, LC3/r;->c0:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, LC3/r;

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
    check-cast p1, LC3/r;

    .line 12
    .line 13
    iget-object v1, p0, LC3/r;->U:Lorg/json/JSONObject;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v1, 0x1

    .line 20
    :goto_0
    iget-object v3, p1, LC3/r;->U:Lorg/json/JSONObject;

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    const/4 v3, 0x1

    .line 27
    :goto_1
    if-eq v1, v3, :cond_4

    .line 28
    .line 29
    return v2

    .line 30
    :cond_4
    iget-wide v3, p0, LC3/r;->H:J

    .line 31
    .line 32
    iget-wide v5, p1, LC3/r;->H:J

    .line 33
    .line 34
    cmp-long v1, v3, v5

    .line 35
    .line 36
    if-nez v1, :cond_6

    .line 37
    .line 38
    iget v1, p0, LC3/r;->I:I

    .line 39
    .line 40
    iget v3, p1, LC3/r;->I:I

    .line 41
    .line 42
    if-ne v1, v3, :cond_6

    .line 43
    .line 44
    iget-wide v3, p0, LC3/r;->J:D

    .line 45
    .line 46
    iget-wide v5, p1, LC3/r;->J:D

    .line 47
    .line 48
    cmpl-double v1, v3, v5

    .line 49
    .line 50
    if-nez v1, :cond_6

    .line 51
    .line 52
    iget v1, p0, LC3/r;->K:I

    .line 53
    .line 54
    iget v3, p1, LC3/r;->K:I

    .line 55
    .line 56
    if-ne v1, v3, :cond_6

    .line 57
    .line 58
    iget v1, p0, LC3/r;->L:I

    .line 59
    .line 60
    iget v3, p1, LC3/r;->L:I

    .line 61
    .line 62
    if-ne v1, v3, :cond_6

    .line 63
    .line 64
    iget-wide v3, p0, LC3/r;->M:J

    .line 65
    .line 66
    iget-wide v5, p1, LC3/r;->M:J

    .line 67
    .line 68
    cmp-long v1, v3, v5

    .line 69
    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    iget-wide v3, p0, LC3/r;->O:D

    .line 73
    .line 74
    iget-wide v5, p1, LC3/r;->O:D

    .line 75
    .line 76
    cmpl-double v1, v3, v5

    .line 77
    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    iget-boolean v1, p0, LC3/r;->P:Z

    .line 81
    .line 82
    iget-boolean v3, p1, LC3/r;->P:Z

    .line 83
    .line 84
    if-ne v1, v3, :cond_6

    .line 85
    .line 86
    iget v1, p0, LC3/r;->R:I

    .line 87
    .line 88
    iget v3, p1, LC3/r;->R:I

    .line 89
    .line 90
    if-ne v1, v3, :cond_6

    .line 91
    .line 92
    iget v1, p0, LC3/r;->S:I

    .line 93
    .line 94
    iget v3, p1, LC3/r;->S:I

    .line 95
    .line 96
    if-ne v1, v3, :cond_6

    .line 97
    .line 98
    iget v1, p0, LC3/r;->V:I

    .line 99
    .line 100
    iget v3, p1, LC3/r;->V:I

    .line 101
    .line 102
    if-ne v1, v3, :cond_6

    .line 103
    .line 104
    iget-object v1, p0, LC3/r;->Q:[J

    .line 105
    .line 106
    iget-object v3, p1, LC3/r;->Q:[J

    .line 107
    .line 108
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    iget-wide v3, p0, LC3/r;->N:J

    .line 115
    .line 116
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-wide v3, p1, LC3/r;->N:J

    .line 121
    .line 122
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v1, p0, LC3/r;->W:Ljava/util/ArrayList;

    .line 133
    .line 134
    iget-object v3, p1, LC3/r;->W:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    iget-object v1, p0, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 143
    .line 144
    iget-object v3, p1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 145
    .line 146
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    iget-object v1, p0, LC3/r;->U:Lorg/json/JSONObject;

    .line 153
    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    iget-object v3, p1, LC3/r;->U:Lorg/json/JSONObject;

    .line 157
    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    invoke-static {v1, v3}, LP3/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    :cond_5
    iget-boolean v1, p0, LC3/r;->X:Z

    .line 167
    .line 168
    iget-boolean v3, p1, LC3/r;->X:Z

    .line 169
    .line 170
    if-ne v1, v3, :cond_6

    .line 171
    .line 172
    iget-object v1, p0, LC3/r;->Y:LC3/c;

    .line 173
    .line 174
    iget-object v3, p1, LC3/r;->Y:LC3/c;

    .line 175
    .line 176
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    iget-object v1, p0, LC3/r;->Z:LC3/v;

    .line 183
    .line 184
    iget-object v3, p1, LC3/r;->Z:LC3/v;

    .line 185
    .line 186
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_6

    .line 191
    .line 192
    iget-object v1, p0, LC3/r;->a0:LC3/j;

    .line 193
    .line 194
    iget-object v3, p1, LC3/r;->a0:LC3/j;

    .line 195
    .line 196
    invoke-static {v1, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    iget-object v1, p0, LC3/r;->b0:LC3/n;

    .line 203
    .line 204
    iget-object v3, p1, LC3/r;->b0:LC3/n;

    .line 205
    .line 206
    invoke-static {v1, v3}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    iget-boolean v1, p0, LC3/r;->c0:Z

    .line 213
    .line 214
    iget-boolean p1, p1, LC3/r;->c0:Z

    .line 215
    .line 216
    if-ne v1, p1, :cond_6

    .line 217
    .line 218
    return v0

    .line 219
    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 4
    .line 5
    iget-wide v2, v0, LC3/r;->H:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, v0, LC3/r;->I:I

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-wide v4, v0, LC3/r;->J:D

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v5, v0, LC3/r;->K:I

    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget v6, v0, LC3/r;->L:I

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-wide v7, v0, LC3/r;->M:J

    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-wide v8, v0, LC3/r;->N:J

    .line 42
    .line 43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    iget-wide v9, v0, LC3/r;->O:D

    .line 48
    .line 49
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    iget-boolean v10, v0, LC3/r;->P:Z

    .line 54
    .line 55
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    iget-object v11, v0, LC3/r;->Q:[J

    .line 60
    .line 61
    invoke-static {v11}, Ljava/util/Arrays;->hashCode([J)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    iget v12, v0, LC3/r;->R:I

    .line 70
    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget v13, v0, LC3/r;->S:I

    .line 76
    .line 77
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    iget-object v14, v0, LC3/r;->U:Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    iget v15, v0, LC3/r;->V:I

    .line 88
    .line 89
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    move-object/from16 v16, v15

    .line 94
    .line 95
    iget-object v15, v0, LC3/r;->W:Ljava/util/ArrayList;

    .line 96
    .line 97
    move-object/from16 v17, v15

    .line 98
    .line 99
    iget-boolean v15, v0, LC3/r;->X:Z

    .line 100
    .line 101
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v15

    .line 105
    move-object/from16 v18, v15

    .line 106
    .line 107
    iget-object v15, v0, LC3/r;->Y:LC3/c;

    .line 108
    .line 109
    move-object/from16 v19, v15

    .line 110
    .line 111
    iget-object v15, v0, LC3/r;->Z:LC3/v;

    .line 112
    .line 113
    move-object/from16 v20, v15

    .line 114
    .line 115
    iget-object v15, v0, LC3/r;->a0:LC3/j;

    .line 116
    .line 117
    move-object/from16 v21, v15

    .line 118
    .line 119
    iget-object v15, v0, LC3/r;->b0:LC3/n;

    .line 120
    .line 121
    const/16 v0, 0x15

    .line 122
    .line 123
    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    aput-object v1, v0, v22

    .line 128
    .line 129
    const/4 v1, 0x1

    .line 130
    aput-object v2, v0, v1

    .line 131
    .line 132
    const/4 v1, 0x2

    .line 133
    aput-object v3, v0, v1

    .line 134
    .line 135
    const/4 v1, 0x3

    .line 136
    aput-object v4, v0, v1

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    aput-object v5, v0, v1

    .line 140
    .line 141
    const/4 v1, 0x5

    .line 142
    aput-object v6, v0, v1

    .line 143
    .line 144
    const/4 v1, 0x6

    .line 145
    aput-object v7, v0, v1

    .line 146
    .line 147
    const/4 v1, 0x7

    .line 148
    aput-object v8, v0, v1

    .line 149
    .line 150
    const/16 v1, 0x8

    .line 151
    .line 152
    aput-object v9, v0, v1

    .line 153
    .line 154
    const/16 v1, 0x9

    .line 155
    .line 156
    aput-object v10, v0, v1

    .line 157
    .line 158
    const/16 v1, 0xa

    .line 159
    .line 160
    aput-object v11, v0, v1

    .line 161
    .line 162
    const/16 v1, 0xb

    .line 163
    .line 164
    aput-object v12, v0, v1

    .line 165
    .line 166
    const/16 v1, 0xc

    .line 167
    .line 168
    aput-object v13, v0, v1

    .line 169
    .line 170
    const/16 v1, 0xd

    .line 171
    .line 172
    aput-object v14, v0, v1

    .line 173
    .line 174
    const/16 v1, 0xe

    .line 175
    .line 176
    aput-object v16, v0, v1

    .line 177
    .line 178
    const/16 v1, 0xf

    .line 179
    .line 180
    aput-object v17, v0, v1

    .line 181
    .line 182
    const/16 v1, 0x10

    .line 183
    .line 184
    aput-object v18, v0, v1

    .line 185
    .line 186
    const/16 v1, 0x11

    .line 187
    .line 188
    aput-object v19, v0, v1

    .line 189
    .line 190
    const/16 v1, 0x12

    .line 191
    .line 192
    aput-object v20, v0, v1

    .line 193
    .line 194
    const/16 v1, 0x13

    .line 195
    .line 196
    aput-object v21, v0, v1

    .line 197
    .line 198
    const/16 v1, 0x14

    .line 199
    .line 200
    aput-object v15, v0, v1

    .line 201
    .line 202
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    return v0
.end method

.method public final i(Lorg/json/JSONObject;I)I
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x2

    .line 8
    const-string v6, "extendedStatus"

    .line 9
    .line 10
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v7, :cond_2

    .line 16
    .line 17
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    if-eqz v11, :cond_0

    .line 31
    .line 32
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    check-cast v11, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    nop

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    new-instance v10, Lorg/json/JSONObject;

    .line 45
    .line 46
    new-array v11, v8, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    check-cast v9, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v10, v0, v9}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_1

    .line 66
    .line 67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    check-cast v11, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_2
    move-object v10, v0

    .line 86
    :goto_3
    const-string v0, "mediaSessionId"

    .line 87
    .line 88
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    iget-wide v11, v1, LC3/r;->H:J

    .line 93
    .line 94
    cmp-long v0, v6, v11

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iput-wide v6, v1, LC3/r;->H:J

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    const/4 v0, 0x0

    .line 103
    :goto_4
    const-string v6, "playerState"

    .line 104
    .line 105
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/4 v11, 0x3

    .line 110
    if-eqz v7, :cond_e

    .line 111
    .line 112
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v7, "IDLE"

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_4

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    goto :goto_5

    .line 126
    :cond_4
    const-string v7, "PLAYING"

    .line 127
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    const/4 v6, 0x2

    .line 135
    goto :goto_5

    .line 136
    :cond_5
    const-string v7, "PAUSED"

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_6

    .line 143
    .line 144
    const/4 v6, 0x3

    .line 145
    goto :goto_5

    .line 146
    :cond_6
    const-string v7, "BUFFERING"

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_7

    .line 153
    .line 154
    const/4 v6, 0x4

    .line 155
    goto :goto_5

    .line 156
    :cond_7
    const-string v7, "LOADING"

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_8

    .line 163
    .line 164
    const/4 v6, 0x5

    .line 165
    goto :goto_5

    .line 166
    :cond_8
    const/4 v6, 0x0

    .line 167
    :goto_5
    iget v7, v1, LC3/r;->K:I

    .line 168
    .line 169
    if-eq v6, v7, :cond_9

    .line 170
    .line 171
    iput v6, v1, LC3/r;->K:I

    .line 172
    .line 173
    or-int/2addr v0, v5

    .line 174
    :cond_9
    if-ne v6, v4, :cond_e

    .line 175
    .line 176
    const-string v6, "idleReason"

    .line 177
    .line 178
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_e

    .line 183
    .line 184
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    const-string v7, "CANCELLED"

    .line 189
    .line 190
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_a

    .line 195
    .line 196
    const/4 v6, 0x2

    .line 197
    goto :goto_6

    .line 198
    :cond_a
    const-string v7, "INTERRUPTED"

    .line 199
    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_b

    .line 205
    .line 206
    const/4 v6, 0x3

    .line 207
    goto :goto_6

    .line 208
    :cond_b
    const-string v7, "FINISHED"

    .line 209
    .line 210
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_c

    .line 215
    .line 216
    const/4 v6, 0x1

    .line 217
    goto :goto_6

    .line 218
    :cond_c
    const-string v7, "ERROR"

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_d

    .line 225
    .line 226
    const/4 v6, 0x4

    .line 227
    goto :goto_6

    .line 228
    :cond_d
    const/4 v6, 0x0

    .line 229
    :goto_6
    iget v7, v1, LC3/r;->L:I

    .line 230
    .line 231
    if-eq v6, v7, :cond_e

    .line 232
    .line 233
    iput v6, v1, LC3/r;->L:I

    .line 234
    .line 235
    or-int/2addr v0, v5

    .line 236
    :cond_e
    const-string v6, "playbackRate"

    .line 237
    .line 238
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_f

    .line 243
    .line 244
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 245
    .line 246
    .line 247
    move-result-wide v6

    .line 248
    iget-wide v12, v1, LC3/r;->J:D

    .line 249
    .line 250
    cmpl-double v14, v12, v6

    .line 251
    .line 252
    if-eqz v14, :cond_f

    .line 253
    .line 254
    iput-wide v6, v1, LC3/r;->J:D

    .line 255
    .line 256
    or-int/2addr v0, v5

    .line 257
    :cond_f
    const-string v6, "currentTime"

    .line 258
    .line 259
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    if-eqz v7, :cond_11

    .line 269
    .line 270
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 271
    .line 272
    .line 273
    move-result-wide v6

    .line 274
    sget-object v14, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 275
    .line 276
    mul-double v6, v6, v12

    .line 277
    .line 278
    double-to-long v6, v6

    .line 279
    iget-wide v14, v1, LC3/r;->M:J

    .line 280
    .line 281
    cmp-long v16, v6, v14

    .line 282
    .line 283
    if-eqz v16, :cond_10

    .line 284
    .line 285
    iput-wide v6, v1, LC3/r;->M:J

    .line 286
    .line 287
    or-int/2addr v0, v5

    .line 288
    :cond_10
    or-int/lit16 v0, v0, 0x80

    .line 289
    .line 290
    :cond_11
    const-string v6, "supportedMediaCommands"

    .line 291
    .line 292
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    if-eqz v7, :cond_12

    .line 297
    .line 298
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    iget-wide v14, v1, LC3/r;->N:J

    .line 303
    .line 304
    cmp-long v16, v6, v14

    .line 305
    .line 306
    if-eqz v16, :cond_12

    .line 307
    .line 308
    iput-wide v6, v1, LC3/r;->N:J

    .line 309
    .line 310
    or-int/2addr v0, v5

    .line 311
    :cond_12
    const-string v6, "volume"

    .line 312
    .line 313
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    if-eqz v7, :cond_14

    .line 318
    .line 319
    if-nez p2, :cond_14

    .line 320
    .line 321
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    const-string v7, "level"

    .line 326
    .line 327
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 328
    .line 329
    .line 330
    move-result-wide v14

    .line 331
    iget-wide v12, v1, LC3/r;->O:D

    .line 332
    .line 333
    cmpl-double v7, v14, v12

    .line 334
    .line 335
    if-eqz v7, :cond_13

    .line 336
    .line 337
    iput-wide v14, v1, LC3/r;->O:D

    .line 338
    .line 339
    or-int/2addr v0, v5

    .line 340
    :cond_13
    const-string v7, "muted"

    .line 341
    .line 342
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    iget-boolean v7, v1, LC3/r;->P:Z

    .line 347
    .line 348
    if-eq v6, v7, :cond_14

    .line 349
    .line 350
    iput-boolean v6, v1, LC3/r;->P:Z

    .line 351
    .line 352
    or-int/2addr v0, v5

    .line 353
    :cond_14
    const-string v6, "activeTrackIds"

    .line 354
    .line 355
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    const/4 v12, 0x0

    .line 360
    if-eqz v7, :cond_15

    .line 361
    .line 362
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    goto :goto_7

    .line 367
    :cond_15
    move-object v6, v12

    .line 368
    :goto_7
    sget-object v7, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 369
    .line 370
    if-nez v6, :cond_16

    .line 371
    .line 372
    move-object v7, v12

    .line 373
    goto :goto_9

    .line 374
    :cond_16
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    new-array v7, v7, [J

    .line 379
    .line 380
    const/4 v13, 0x0

    .line 381
    :goto_8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 382
    .line 383
    .line 384
    move-result v14

    .line 385
    if-ge v13, v14, :cond_17

    .line 386
    .line 387
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v14

    .line 391
    aput-wide v14, v7, v13

    .line 392
    .line 393
    add-int/2addr v13, v4

    .line 394
    goto :goto_8

    .line 395
    :cond_17
    :goto_9
    if-eqz v7, :cond_19

    .line 396
    .line 397
    iget-object v6, v1, LC3/r;->Q:[J

    .line 398
    .line 399
    if-nez v6, :cond_18

    .line 400
    .line 401
    goto :goto_b

    .line 402
    :cond_18
    array-length v13, v7

    .line 403
    array-length v6, v6

    .line 404
    if-ne v6, v13, :cond_1a

    .line 405
    .line 406
    const/4 v6, 0x0

    .line 407
    :goto_a
    array-length v13, v7

    .line 408
    if-ge v6, v13, :cond_1b

    .line 409
    .line 410
    iget-object v13, v1, LC3/r;->Q:[J

    .line 411
    .line 412
    aget-wide v14, v13, v6

    .line 413
    .line 414
    aget-wide v17, v7, v6

    .line 415
    .line 416
    cmp-long v13, v14, v17

    .line 417
    .line 418
    if-nez v13, :cond_1a

    .line 419
    .line 420
    add-int/2addr v6, v4

    .line 421
    goto :goto_a

    .line 422
    :cond_19
    iget-object v6, v1, LC3/r;->Q:[J

    .line 423
    .line 424
    if-eqz v6, :cond_1b

    .line 425
    .line 426
    :cond_1a
    :goto_b
    iput-object v7, v1, LC3/r;->Q:[J

    .line 427
    .line 428
    or-int/2addr v0, v5

    .line 429
    :cond_1b
    const-string v6, "customData"

    .line 430
    .line 431
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    if-eqz v7, :cond_1c

    .line 436
    .line 437
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    iput-object v6, v1, LC3/r;->U:Lorg/json/JSONObject;

    .line 442
    .line 443
    iput-object v12, v1, LC3/r;->T:Ljava/lang/String;

    .line 444
    .line 445
    or-int/2addr v0, v5

    .line 446
    :cond_1c
    const-string v6, "media"

    .line 447
    .line 448
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 449
    .line 450
    .line 451
    move-result v7

    .line 452
    if-eqz v7, :cond_1f

    .line 453
    .line 454
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 455
    .line 456
    .line 457
    move-result-object v6

    .line 458
    new-instance v7, Lcom/google/android/gms/cast/MediaInfo;

    .line 459
    .line 460
    invoke-direct {v7, v6}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 461
    .line 462
    .line 463
    iget-object v13, v1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 464
    .line 465
    if-eqz v13, :cond_1d

    .line 466
    .line 467
    invoke-virtual {v13, v7}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    if-nez v13, :cond_1e

    .line 472
    .line 473
    :cond_1d
    iput-object v7, v1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 474
    .line 475
    or-int/2addr v0, v5

    .line 476
    :cond_1e
    const-string v7, "metadata"

    .line 477
    .line 478
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    if-eqz v6, :cond_1f

    .line 483
    .line 484
    or-int/2addr v0, v2

    .line 485
    :cond_1f
    const-string v6, "currentItemId"

    .line 486
    .line 487
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    if-eqz v7, :cond_20

    .line 492
    .line 493
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    iget v7, v1, LC3/r;->I:I

    .line 498
    .line 499
    if-eq v7, v6, :cond_20

    .line 500
    .line 501
    iput v6, v1, LC3/r;->I:I

    .line 502
    .line 503
    or-int/2addr v0, v5

    .line 504
    :cond_20
    const-string v6, "preloadedItemId"

    .line 505
    .line 506
    invoke-virtual {v10, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    iget v7, v1, LC3/r;->S:I

    .line 511
    .line 512
    if-eq v7, v6, :cond_21

    .line 513
    .line 514
    iput v6, v1, LC3/r;->S:I

    .line 515
    .line 516
    or-int/lit8 v0, v0, 0x10

    .line 517
    .line 518
    :cond_21
    const-string v6, "loadingItemId"

    .line 519
    .line 520
    invoke-virtual {v10, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    iget v7, v1, LC3/r;->R:I

    .line 525
    .line 526
    if-eq v7, v6, :cond_22

    .line 527
    .line 528
    iput v6, v1, LC3/r;->R:I

    .line 529
    .line 530
    or-int/2addr v0, v5

    .line 531
    :cond_22
    iget-object v6, v1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 532
    .line 533
    if-nez v6, :cond_23

    .line 534
    .line 535
    const/4 v6, -0x1

    .line 536
    goto :goto_c

    .line 537
    :cond_23
    iget v6, v6, Lcom/google/android/gms/cast/MediaInfo;->H:I

    .line 538
    .line 539
    :goto_c
    iget v13, v1, LC3/r;->K:I

    .line 540
    .line 541
    iget v14, v1, LC3/r;->L:I

    .line 542
    .line 543
    iget v15, v1, LC3/r;->R:I

    .line 544
    .line 545
    if-eq v13, v4, :cond_25

    .line 546
    .line 547
    :cond_24
    const/4 v6, 0x0

    .line 548
    goto :goto_e

    .line 549
    :cond_25
    if-eq v14, v4, :cond_27

    .line 550
    .line 551
    if-eq v14, v5, :cond_26

    .line 552
    .line 553
    if-eq v14, v11, :cond_27

    .line 554
    .line 555
    :goto_d
    const/4 v6, 0x1

    .line 556
    goto :goto_e

    .line 557
    :cond_26
    if-eq v6, v5, :cond_24

    .line 558
    .line 559
    goto :goto_d

    .line 560
    :cond_27
    if-nez v15, :cond_24

    .line 561
    .line 562
    goto :goto_d

    .line 563
    :goto_e
    iget-object v13, v1, LC3/r;->W:Ljava/util/ArrayList;

    .line 564
    .line 565
    iget-object v14, v1, LC3/r;->d0:Landroid/util/SparseArray;

    .line 566
    .line 567
    const-string v15, "items"

    .line 568
    .line 569
    const-string v2, "repeatMode"

    .line 570
    .line 571
    if-nez v6, :cond_33

    .line 572
    .line 573
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    if-eqz v6, :cond_29

    .line 578
    .line 579
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    invoke-static {v6}, LU4/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    if-nez v6, :cond_28

    .line 588
    .line 589
    iget v6, v1, LC3/r;->V:I

    .line 590
    .line 591
    goto :goto_f

    .line 592
    :cond_28
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 593
    .line 594
    .line 595
    move-result v6

    .line 596
    :goto_f
    iget v7, v1, LC3/r;->V:I

    .line 597
    .line 598
    if-eq v7, v6, :cond_29

    .line 599
    .line 600
    iput v6, v1, LC3/r;->V:I

    .line 601
    .line 602
    const/4 v6, 0x1

    .line 603
    goto :goto_10

    .line 604
    :cond_29
    const/4 v6, 0x0

    .line 605
    :goto_10
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result v7

    .line 609
    if-eqz v7, :cond_31

    .line 610
    .line 611
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    new-instance v11, Landroid/util/SparseArray;

    .line 620
    .line 621
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 622
    .line 623
    .line 624
    const/4 v12, 0x0

    .line 625
    :goto_11
    if-ge v12, v9, :cond_2a

    .line 626
    .line 627
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    const-string v8, "itemId"

    .line 632
    .line 633
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    invoke-virtual {v11, v12, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    add-int/2addr v12, v4

    .line 645
    const/4 v5, 0x2

    .line 646
    const/4 v8, 0x0

    .line 647
    goto :goto_11

    .line 648
    :cond_2a
    new-instance v5, Ljava/util/ArrayList;

    .line 649
    .line 650
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .line 652
    .line 653
    const/4 v8, 0x0

    .line 654
    :goto_12
    if-ge v8, v9, :cond_2f

    .line 655
    .line 656
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v12

    .line 660
    check-cast v12, Ljava/lang/Integer;

    .line 661
    .line 662
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    check-cast v4, Ljava/lang/Integer;

    .line 675
    .line 676
    if-nez v4, :cond_2b

    .line 677
    .line 678
    const/4 v4, 0x0

    .line 679
    goto :goto_13

    .line 680
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    check-cast v4, LC3/p;

    .line 689
    .line 690
    :goto_13
    if-eqz v4, :cond_2d

    .line 691
    .line 692
    invoke-virtual {v4, v3}, LC3/p;->i(Lorg/json/JSONObject;)Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    or-int/2addr v3, v6

    .line 697
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    check-cast v4, Ljava/lang/Integer;

    .line 709
    .line 710
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    if-eq v8, v4, :cond_2c

    .line 715
    .line 716
    :goto_14
    const/4 v3, 0x1

    .line 717
    const/4 v6, 0x1

    .line 718
    goto :goto_15

    .line 719
    :cond_2c
    move v6, v3

    .line 720
    const/4 v3, 0x1

    .line 721
    goto :goto_15

    .line 722
    :cond_2d
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 723
    .line 724
    .line 725
    move-result v4

    .line 726
    iget v6, v1, LC3/r;->I:I

    .line 727
    .line 728
    if-ne v4, v6, :cond_2e

    .line 729
    .line 730
    iget-object v4, v1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 731
    .line 732
    if-eqz v4, :cond_2e

    .line 733
    .line 734
    new-instance v6, LC3/o;

    .line 735
    .line 736
    invoke-direct {v6, v4}, LC3/o;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v6}, LC3/o;->a()LC3/p;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    invoke-virtual {v4, v3}, LC3/p;->i(Lorg/json/JSONObject;)Z

    .line 744
    .line 745
    .line 746
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    goto :goto_14

    .line 750
    :cond_2e
    new-instance v4, LC3/p;

    .line 751
    .line 752
    invoke-direct {v4, v3}, LC3/p;-><init>(Lorg/json/JSONObject;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    goto :goto_14

    .line 759
    :goto_15
    add-int/2addr v8, v3

    .line 760
    const/4 v4, 0x1

    .line 761
    goto :goto_12

    .line 762
    :cond_2f
    const/4 v3, 0x1

    .line 763
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    if-eq v4, v9, :cond_30

    .line 768
    .line 769
    const/4 v4, 0x0

    .line 770
    goto :goto_16

    .line 771
    :cond_30
    const/4 v4, 0x1

    .line 772
    :goto_16
    xor-int/2addr v4, v3

    .line 773
    or-int/2addr v6, v4

    .line 774
    invoke-virtual {v1, v5}, LC3/r;->l(Ljava/util/ArrayList;)V

    .line 775
    .line 776
    .line 777
    :cond_31
    if-eqz v6, :cond_32

    .line 778
    .line 779
    const/16 v3, 0x8

    .line 780
    .line 781
    or-int/2addr v0, v3

    .line 782
    :cond_32
    :goto_17
    move v3, v0

    .line 783
    goto :goto_18

    .line 784
    :cond_33
    const/16 v3, 0x8

    .line 785
    .line 786
    const/4 v4, 0x0

    .line 787
    iput v4, v1, LC3/r;->I:I

    .line 788
    .line 789
    iput v4, v1, LC3/r;->R:I

    .line 790
    .line 791
    iput v4, v1, LC3/r;->S:I

    .line 792
    .line 793
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    if-nez v5, :cond_32

    .line 798
    .line 799
    or-int/2addr v0, v3

    .line 800
    iput v4, v1, LC3/r;->V:I

    .line 801
    .line 802
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    .line 806
    .line 807
    .line 808
    goto :goto_17

    .line 809
    :goto_18
    const-string v0, "breakStatus"

    .line 810
    .line 811
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    sget-object v4, LC3/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 816
    .line 817
    const-wide/16 v4, -0x1

    .line 818
    .line 819
    if-nez v0, :cond_35

    .line 820
    .line 821
    :cond_34
    :goto_19
    const/4 v0, 0x0

    .line 822
    goto :goto_1a

    .line 823
    :cond_35
    const-string v6, "currentBreakTime"

    .line 824
    .line 825
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 826
    .line 827
    .line 828
    move-result v7

    .line 829
    if-eqz v7, :cond_34

    .line 830
    .line 831
    const-string v7, "currentBreakClipTime"

    .line 832
    .line 833
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 834
    .line 835
    .line 836
    move-result v8

    .line 837
    if-nez v8, :cond_36

    .line 838
    .line 839
    goto :goto_19

    .line 840
    :cond_36
    :try_start_1
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 841
    .line 842
    .line 843
    move-result-wide v8

    .line 844
    sget-object v6, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 845
    .line 846
    const-wide/16 v11, 0x3e8

    .line 847
    .line 848
    mul-long v20, v8, v11

    .line 849
    .line 850
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 851
    .line 852
    .line 853
    move-result-wide v6

    .line 854
    mul-long v22, v6, v11

    .line 855
    .line 856
    const-string v6, "breakId"

    .line 857
    .line 858
    invoke-static {v0, v6}, LH3/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v24

    .line 862
    const-string v6, "breakClipId"

    .line 863
    .line 864
    invoke-static {v0, v6}, LH3/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v25

    .line 868
    const-string v6, "whenSkippable"

    .line 869
    .line 870
    invoke-virtual {v0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 871
    .line 872
    .line 873
    move-result-wide v6

    .line 874
    cmp-long v0, v6, v4

    .line 875
    .line 876
    if-eqz v0, :cond_37

    .line 877
    .line 878
    mul-long v6, v6, v11

    .line 879
    .line 880
    :cond_37
    move-wide/from16 v26, v6

    .line 881
    .line 882
    new-instance v0, LC3/c;

    .line 883
    .line 884
    move-object/from16 v19, v0

    .line 885
    .line 886
    invoke-direct/range {v19 .. v27}, LC3/c;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 887
    .line 888
    .line 889
    goto :goto_1a

    .line 890
    :catch_1
    move-exception v0

    .line 891
    const/4 v6, 0x0

    .line 892
    new-array v7, v6, [Ljava/lang/Object;

    .line 893
    .line 894
    sget-object v6, LC3/c;->L:LH3/b;

    .line 895
    .line 896
    iget-object v8, v6, LH3/b;->a:Ljava/lang/String;

    .line 897
    .line 898
    const-string v9, "Error while creating an AdBreakClipInfo from JSON"

    .line 899
    .line 900
    invoke-virtual {v6, v9, v7}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v6

    .line 904
    invoke-static {v8, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    .line 906
    .line 907
    goto :goto_19

    .line 908
    :goto_1a
    iget-object v6, v1, LC3/r;->Y:LC3/c;

    .line 909
    .line 910
    if-nez v6, :cond_38

    .line 911
    .line 912
    if-nez v0, :cond_39

    .line 913
    .line 914
    :cond_38
    if-eqz v6, :cond_3c

    .line 915
    .line 916
    invoke-virtual {v6, v0}, LC3/c;->equals(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    move-result v6

    .line 920
    if-nez v6, :cond_3c

    .line 921
    .line 922
    :cond_39
    if-eqz v0, :cond_3b

    .line 923
    .line 924
    iget-object v6, v0, LC3/c;->I:Ljava/lang/String;

    .line 925
    .line 926
    if-nez v6, :cond_3a

    .line 927
    .line 928
    iget-object v6, v0, LC3/c;->J:Ljava/lang/String;

    .line 929
    .line 930
    if-eqz v6, :cond_3b

    .line 931
    .line 932
    :cond_3a
    const/4 v6, 0x1

    .line 933
    goto :goto_1b

    .line 934
    :cond_3b
    const/4 v6, 0x0

    .line 935
    :goto_1b
    iput-boolean v6, v1, LC3/r;->X:Z

    .line 936
    .line 937
    iput-object v0, v1, LC3/r;->Y:LC3/c;

    .line 938
    .line 939
    or-int/lit8 v3, v3, 0x20

    .line 940
    .line 941
    :cond_3c
    const-string v0, "videoInfo"

    .line 942
    .line 943
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    sget-object v6, LC3/v;->J:LH3/b;

    .line 948
    .line 949
    if-nez v0, :cond_3d

    .line 950
    .line 951
    :goto_1c
    const/4 v8, 0x0

    .line 952
    goto/16 :goto_21

    .line 953
    .line 954
    :cond_3d
    :try_start_2
    const-string v7, "hdrType"

    .line 955
    .line 956
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v7

    .line 960
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 961
    .line 962
    .line 963
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 964
    .line 965
    .line 966
    move-result v8

    .line 967
    sparse-switch v8, :sswitch_data_0

    .line 968
    .line 969
    .line 970
    :goto_1d
    const/4 v8, -0x1

    .line 971
    goto :goto_1e

    .line 972
    :sswitch_0
    const-string v8, "hdr10"

    .line 973
    .line 974
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result v8

    .line 978
    if-nez v8, :cond_3e

    .line 979
    .line 980
    goto :goto_1d

    .line 981
    :cond_3e
    const/4 v8, 0x3

    .line 982
    goto :goto_1e

    .line 983
    :sswitch_1
    const-string v8, "sdr"

    .line 984
    .line 985
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    move-result v8

    .line 989
    if-nez v8, :cond_3f

    .line 990
    .line 991
    goto :goto_1d

    .line 992
    :cond_3f
    const/4 v8, 0x2

    .line 993
    goto :goto_1e

    .line 994
    :sswitch_2
    const-string v8, "hdr"

    .line 995
    .line 996
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v8

    .line 1000
    if-nez v8, :cond_40

    .line 1001
    .line 1002
    goto :goto_1d

    .line 1003
    :cond_40
    const/4 v8, 0x1

    .line 1004
    goto :goto_1e

    .line 1005
    :sswitch_3
    const-string v8, "dv"

    .line 1006
    .line 1007
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v8

    .line 1011
    if-nez v8, :cond_41

    .line 1012
    .line 1013
    goto :goto_1d

    .line 1014
    :cond_41
    const/4 v8, 0x0

    .line 1015
    :goto_1e
    packed-switch v8, :pswitch_data_0

    .line 1016
    .line 1017
    .line 1018
    :try_start_3
    const-string v8, "Unknown HDR type: %s"

    .line 1019
    .line 1020
    const/4 v9, 0x1

    .line 1021
    new-array v11, v9, [Ljava/lang/Object;

    .line 1022
    .line 1023
    const/4 v9, 0x0

    .line 1024
    aput-object v7, v11, v9

    .line 1025
    .line 1026
    invoke-virtual {v6, v8, v11}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    .line 1028
    .line 1029
    const/4 v7, 0x0

    .line 1030
    goto :goto_1f

    .line 1031
    :catch_2
    move-exception v0

    .line 1032
    const/4 v7, 0x0

    .line 1033
    goto :goto_20

    .line 1034
    :pswitch_0
    const/4 v7, 0x2

    .line 1035
    goto :goto_1f

    .line 1036
    :pswitch_1
    const/4 v7, 0x1

    .line 1037
    goto :goto_1f

    .line 1038
    :pswitch_2
    const/4 v7, 0x4

    .line 1039
    goto :goto_1f

    .line 1040
    :pswitch_3
    const/4 v7, 0x3

    .line 1041
    :goto_1f
    new-instance v8, LC3/v;

    .line 1042
    .line 1043
    const-string v9, "width"

    .line 1044
    .line 1045
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    move-result v9

    .line 1049
    const-string v11, "height"

    .line 1050
    .line 1051
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    invoke-direct {v8, v9, v0, v7}, LC3/v;-><init>(III)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1056
    .line 1057
    .line 1058
    goto :goto_21

    .line 1059
    :goto_20
    new-array v8, v7, [Ljava/lang/Object;

    .line 1060
    .line 1061
    const-string v7, "Error while creating a VideoInfo instance from JSON"

    .line 1062
    .line 1063
    invoke-virtual {v6, v0, v7, v8}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    .line 1065
    .line 1066
    goto :goto_1c

    .line 1067
    :goto_21
    iget-object v0, v1, LC3/r;->Z:LC3/v;

    .line 1068
    .line 1069
    if-nez v0, :cond_42

    .line 1070
    .line 1071
    if-nez v8, :cond_43

    .line 1072
    .line 1073
    :cond_42
    if-eqz v0, :cond_44

    .line 1074
    .line 1075
    invoke-virtual {v0, v8}, LC3/v;->equals(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    if-nez v0, :cond_44

    .line 1080
    .line 1081
    :cond_43
    iput-object v8, v1, LC3/r;->Z:LC3/v;

    .line 1082
    .line 1083
    or-int/lit8 v3, v3, 0x40

    .line 1084
    .line 1085
    :cond_44
    const-string v0, "breakInfo"

    .line 1086
    .line 1087
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v6

    .line 1091
    if-eqz v6, :cond_45

    .line 1092
    .line 1093
    iget-object v6, v1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 1094
    .line 1095
    if-eqz v6, :cond_45

    .line 1096
    .line 1097
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v6, v0}, Lcom/google/android/gms/cast/MediaInfo;->l(Lorg/json/JSONObject;)V

    .line 1102
    .line 1103
    .line 1104
    const/4 v6, 0x2

    .line 1105
    or-int/2addr v3, v6

    .line 1106
    :cond_45
    const-string v0, "queueData"

    .line 1107
    .line 1108
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v6

    .line 1112
    if-eqz v6, :cond_5b

    .line 1113
    .line 1114
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    if-nez v0, :cond_46

    .line 1119
    .line 1120
    move-wide v11, v4

    .line 1121
    const/4 v0, 0x0

    .line 1122
    const/4 v2, 0x0

    .line 1123
    const/4 v4, 0x0

    .line 1124
    const/4 v5, 0x0

    .line 1125
    const/4 v6, 0x0

    .line 1126
    const/4 v7, 0x0

    .line 1127
    const/4 v8, 0x0

    .line 1128
    const/4 v9, 0x0

    .line 1129
    const/4 v13, 0x0

    .line 1130
    goto/16 :goto_2e

    .line 1131
    .line 1132
    :cond_46
    const-string v6, "id"

    .line 1133
    .line 1134
    invoke-static {v0, v6}, LH3/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v6

    .line 1138
    const-string v7, "entity"

    .line 1139
    .line 1140
    invoke-static {v0, v7}, LH3/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v7

    .line 1144
    const-string v8, "queueType"

    .line 1145
    .line 1146
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v8

    .line 1150
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 1154
    .line 1155
    .line 1156
    move-result v9

    .line 1157
    const/4 v11, 0x7

    .line 1158
    const/4 v12, 0x6

    .line 1159
    sparse-switch v9, :sswitch_data_1

    .line 1160
    .line 1161
    .line 1162
    :goto_22
    const/4 v8, -0x1

    .line 1163
    goto/16 :goto_23

    .line 1164
    .line 1165
    :sswitch_4
    const-string v9, "LIVE_TV"

    .line 1166
    .line 1167
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v8

    .line 1171
    if-nez v8, :cond_47

    .line 1172
    .line 1173
    goto :goto_22

    .line 1174
    :cond_47
    const/16 v8, 0x8

    .line 1175
    .line 1176
    goto/16 :goto_23

    .line 1177
    .line 1178
    :sswitch_5
    const-string v9, "VIDEO_PLAYLIST"

    .line 1179
    .line 1180
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v8

    .line 1184
    if-nez v8, :cond_48

    .line 1185
    .line 1186
    goto :goto_22

    .line 1187
    :cond_48
    const/4 v8, 0x7

    .line 1188
    goto :goto_23

    .line 1189
    :sswitch_6
    const-string v9, "MOVIE"

    .line 1190
    .line 1191
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v8

    .line 1195
    if-nez v8, :cond_49

    .line 1196
    .line 1197
    goto :goto_22

    .line 1198
    :cond_49
    const/4 v8, 0x6

    .line 1199
    goto :goto_23

    .line 1200
    :sswitch_7
    const-string v9, "ALBUM"

    .line 1201
    .line 1202
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v8

    .line 1206
    if-nez v8, :cond_4a

    .line 1207
    .line 1208
    goto :goto_22

    .line 1209
    :cond_4a
    const/4 v8, 0x5

    .line 1210
    goto :goto_23

    .line 1211
    :sswitch_8
    const-string v9, "TV_SERIES"

    .line 1212
    .line 1213
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v8

    .line 1217
    if-nez v8, :cond_4b

    .line 1218
    .line 1219
    goto :goto_22

    .line 1220
    :cond_4b
    const/4 v8, 0x4

    .line 1221
    goto :goto_23

    .line 1222
    :sswitch_9
    const-string v9, "AUDIOBOOK"

    .line 1223
    .line 1224
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v8

    .line 1228
    if-nez v8, :cond_4c

    .line 1229
    .line 1230
    goto :goto_22

    .line 1231
    :cond_4c
    const/4 v8, 0x3

    .line 1232
    goto :goto_23

    .line 1233
    :sswitch_a
    const-string v9, "PLAYLIST"

    .line 1234
    .line 1235
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    move-result v8

    .line 1239
    if-nez v8, :cond_4d

    .line 1240
    .line 1241
    goto :goto_22

    .line 1242
    :cond_4d
    const/4 v8, 0x2

    .line 1243
    goto :goto_23

    .line 1244
    :sswitch_b
    const-string v9, "RADIO_STATION"

    .line 1245
    .line 1246
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v8

    .line 1250
    if-nez v8, :cond_4e

    .line 1251
    .line 1252
    goto :goto_22

    .line 1253
    :cond_4e
    const/4 v8, 0x1

    .line 1254
    goto :goto_23

    .line 1255
    :sswitch_c
    const-string v9, "PODCAST_SERIES"

    .line 1256
    .line 1257
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result v8

    .line 1261
    if-nez v8, :cond_4f

    .line 1262
    .line 1263
    goto :goto_22

    .line 1264
    :cond_4f
    const/4 v8, 0x0

    .line 1265
    :goto_23
    packed-switch v8, :pswitch_data_1

    .line 1266
    .line 1267
    .line 1268
    const/16 v17, 0x0

    .line 1269
    .line 1270
    goto :goto_24

    .line 1271
    :pswitch_4
    const/16 v17, 0x8

    .line 1272
    .line 1273
    goto :goto_24

    .line 1274
    :pswitch_5
    const/16 v17, 0x7

    .line 1275
    .line 1276
    goto :goto_24

    .line 1277
    :pswitch_6
    const/16 v8, 0x9

    .line 1278
    .line 1279
    const/16 v17, 0x9

    .line 1280
    .line 1281
    goto :goto_24

    .line 1282
    :pswitch_7
    const/16 v17, 0x1

    .line 1283
    .line 1284
    goto :goto_24

    .line 1285
    :pswitch_8
    const/16 v17, 0x6

    .line 1286
    .line 1287
    goto :goto_24

    .line 1288
    :pswitch_9
    const/16 v17, 0x3

    .line 1289
    .line 1290
    goto :goto_24

    .line 1291
    :pswitch_a
    const/16 v17, 0x2

    .line 1292
    .line 1293
    goto :goto_24

    .line 1294
    :pswitch_b
    const/16 v17, 0x4

    .line 1295
    .line 1296
    goto :goto_24

    .line 1297
    :pswitch_c
    const/16 v17, 0x5

    .line 1298
    .line 1299
    :goto_24
    const-string v8, "name"

    .line 1300
    .line 1301
    invoke-static {v0, v8}, LH3/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v8

    .line 1305
    const-string v9, "containerMetadata"

    .line 1306
    .line 1307
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1308
    .line 1309
    .line 1310
    move-result v11

    .line 1311
    if-eqz v11, :cond_50

    .line 1312
    .line 1313
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v9

    .line 1317
    goto :goto_25

    .line 1318
    :cond_50
    const/4 v9, 0x0

    .line 1319
    :goto_25
    if-eqz v9, :cond_55

    .line 1320
    .line 1321
    const-string v11, "containerType"

    .line 1322
    .line 1323
    const-string v12, ""

    .line 1324
    .line 1325
    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v11

    .line 1329
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1330
    .line 1331
    .line 1332
    const-string v12, "AUDIOBOOK_CONTAINER"

    .line 1333
    .line 1334
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1335
    .line 1336
    .line 1337
    move-result v11

    .line 1338
    const-string v12, "title"

    .line 1339
    .line 1340
    invoke-static {v9, v12}, LH3/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v12

    .line 1344
    const-string v13, "sections"

    .line 1345
    .line 1346
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v13

    .line 1350
    if-eqz v13, :cond_53

    .line 1351
    .line 1352
    new-instance v14, Ljava/util/ArrayList;

    .line 1353
    .line 1354
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    .line 1356
    .line 1357
    const/4 v4, 0x0

    .line 1358
    :goto_26
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 1359
    .line 1360
    .line 1361
    move-result v5

    .line 1362
    if-ge v4, v5, :cond_52

    .line 1363
    .line 1364
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v5

    .line 1368
    move-object/from16 p1, v6

    .line 1369
    .line 1370
    if-eqz v5, :cond_51

    .line 1371
    .line 1372
    new-instance v6, LC3/l;

    .line 1373
    .line 1374
    move-object/from16 v19, v7

    .line 1375
    .line 1376
    const/4 v7, 0x0

    .line 1377
    invoke-direct {v6, v7}, LC3/l;-><init>(I)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v6, v5}, LC3/l;->n(Lorg/json/JSONObject;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    :goto_27
    const/4 v5, 0x1

    .line 1387
    goto :goto_28

    .line 1388
    :cond_51
    move-object/from16 v19, v7

    .line 1389
    .line 1390
    goto :goto_27

    .line 1391
    :goto_28
    add-int/2addr v4, v5

    .line 1392
    move-object/from16 v6, p1

    .line 1393
    .line 1394
    move-object/from16 v7, v19

    .line 1395
    .line 1396
    goto :goto_26

    .line 1397
    :cond_52
    move-object/from16 p1, v6

    .line 1398
    .line 1399
    move-object/from16 v19, v7

    .line 1400
    .line 1401
    goto :goto_29

    .line 1402
    :cond_53
    move-object/from16 p1, v6

    .line 1403
    .line 1404
    move-object/from16 v19, v7

    .line 1405
    .line 1406
    const/4 v14, 0x0

    .line 1407
    :goto_29
    const-string v4, "containerImages"

    .line 1408
    .line 1409
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v4

    .line 1413
    if-eqz v4, :cond_54

    .line 1414
    .line 1415
    new-instance v5, Ljava/util/ArrayList;

    .line 1416
    .line 1417
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    .line 1419
    .line 1420
    invoke-static {v5, v4}, LI3/a;->c(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 1421
    .line 1422
    .line 1423
    goto :goto_2a

    .line 1424
    :cond_54
    const/4 v5, 0x0

    .line 1425
    :goto_2a
    const-string v4, "containerDuration"

    .line 1426
    .line 1427
    const-wide/16 v6, 0x0

    .line 1428
    .line 1429
    invoke-virtual {v9, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 1430
    .line 1431
    .line 1432
    move-result-wide v6

    .line 1433
    new-instance v4, LC3/m;

    .line 1434
    .line 1435
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1436
    .line 1437
    .line 1438
    iput v11, v4, LC3/m;->G:I

    .line 1439
    .line 1440
    iput-object v12, v4, LC3/m;->H:Ljava/lang/String;

    .line 1441
    .line 1442
    iput-object v14, v4, LC3/m;->I:Ljava/util/List;

    .line 1443
    .line 1444
    iput-object v5, v4, LC3/m;->J:Ljava/util/List;

    .line 1445
    .line 1446
    iput-wide v6, v4, LC3/m;->K:D

    .line 1447
    .line 1448
    goto :goto_2b

    .line 1449
    :cond_55
    move-object/from16 p1, v6

    .line 1450
    .line 1451
    move-object/from16 v19, v7

    .line 1452
    .line 1453
    const/4 v4, 0x0

    .line 1454
    :goto_2b
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v2

    .line 1458
    invoke-static {v2}, LU4/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v2

    .line 1462
    if-eqz v2, :cond_56

    .line 1463
    .line 1464
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1465
    .line 1466
    .line 1467
    move-result v2

    .line 1468
    goto :goto_2c

    .line 1469
    :cond_56
    const/4 v2, 0x0

    .line 1470
    :goto_2c
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v5

    .line 1474
    if-eqz v5, :cond_58

    .line 1475
    .line 1476
    new-instance v6, Ljava/util/ArrayList;

    .line 1477
    .line 1478
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1479
    .line 1480
    .line 1481
    const/4 v7, 0x0

    .line 1482
    :goto_2d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 1483
    .line 1484
    .line 1485
    move-result v9

    .line 1486
    if-ge v7, v9, :cond_59

    .line 1487
    .line 1488
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v9

    .line 1492
    if-eqz v9, :cond_57

    .line 1493
    .line 1494
    :try_start_4
    new-instance v11, LC3/p;

    .line 1495
    .line 1496
    invoke-direct {v11, v9}, LC3/p;-><init>(Lorg/json/JSONObject;)V

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1500
    .line 1501
    .line 1502
    :catch_3
    :cond_57
    const/4 v9, 0x1

    .line 1503
    add-int/2addr v7, v9

    .line 1504
    goto :goto_2d

    .line 1505
    :cond_58
    const/4 v6, 0x0

    .line 1506
    :cond_59
    const-string v5, "startIndex"

    .line 1507
    .line 1508
    const/4 v7, 0x0

    .line 1509
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 1510
    .line 1511
    .line 1512
    move-result v5

    .line 1513
    const-string v7, "startTime"

    .line 1514
    .line 1515
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1516
    .line 1517
    .line 1518
    move-result v9

    .line 1519
    const-wide/16 v11, -0x1

    .line 1520
    .line 1521
    if-eqz v9, :cond_5a

    .line 1522
    .line 1523
    long-to-double v11, v11

    .line 1524
    invoke-virtual {v0, v7, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 1525
    .line 1526
    .line 1527
    move-result-wide v11

    .line 1528
    const-wide v13, 0x408f400000000000L    # 1000.0

    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    mul-double v11, v11, v13

    .line 1534
    .line 1535
    double-to-long v11, v11

    .line 1536
    :cond_5a
    const-string v7, "shuffle"

    .line 1537
    .line 1538
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v0

    .line 1542
    move-object/from16 v7, p1

    .line 1543
    .line 1544
    move-object v13, v8

    .line 1545
    move-object/from16 v9, v19

    .line 1546
    .line 1547
    move-object v8, v6

    .line 1548
    move v6, v0

    .line 1549
    move-object v0, v4

    .line 1550
    move/from16 v4, v17

    .line 1551
    .line 1552
    :goto_2e
    new-instance v14, LC3/n;

    .line 1553
    .line 1554
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 1555
    .line 1556
    .line 1557
    iput-object v7, v14, LC3/n;->G:Ljava/lang/String;

    .line 1558
    .line 1559
    iput-object v9, v14, LC3/n;->H:Ljava/lang/String;

    .line 1560
    .line 1561
    iput v4, v14, LC3/n;->I:I

    .line 1562
    .line 1563
    iput-object v13, v14, LC3/n;->J:Ljava/lang/String;

    .line 1564
    .line 1565
    iput-object v0, v14, LC3/n;->K:LC3/m;

    .line 1566
    .line 1567
    iput v2, v14, LC3/n;->L:I

    .line 1568
    .line 1569
    iput-object v8, v14, LC3/n;->M:Ljava/util/List;

    .line 1570
    .line 1571
    iput v5, v14, LC3/n;->N:I

    .line 1572
    .line 1573
    iput-wide v11, v14, LC3/n;->O:J

    .line 1574
    .line 1575
    iput-boolean v6, v14, LC3/n;->P:Z

    .line 1576
    .line 1577
    iput-object v14, v1, LC3/r;->b0:LC3/n;

    .line 1578
    .line 1579
    iget-boolean v0, v1, LC3/r;->c0:Z

    .line 1580
    .line 1581
    if-eq v0, v6, :cond_5b

    .line 1582
    .line 1583
    iput-boolean v6, v1, LC3/r;->c0:Z

    .line 1584
    .line 1585
    const/16 v2, 0x8

    .line 1586
    .line 1587
    or-int/2addr v3, v2

    .line 1588
    :cond_5b
    const-string v0, "liveSeekableRange"

    .line 1589
    .line 1590
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v2

    .line 1594
    if-eqz v2, :cond_5f

    .line 1595
    .line 1596
    const/4 v2, 0x2

    .line 1597
    or-int/2addr v2, v3

    .line 1598
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v0

    .line 1602
    sget-object v3, LC3/j;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1603
    .line 1604
    if-nez v0, :cond_5d

    .line 1605
    .line 1606
    :cond_5c
    :goto_2f
    const/4 v12, 0x0

    .line 1607
    goto :goto_30

    .line 1608
    :cond_5d
    const-string v3, "start"

    .line 1609
    .line 1610
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v4

    .line 1614
    if-eqz v4, :cond_5c

    .line 1615
    .line 1616
    const-string v4, "end"

    .line 1617
    .line 1618
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v5

    .line 1622
    if-nez v5, :cond_5e

    .line 1623
    .line 1624
    goto :goto_2f

    .line 1625
    :cond_5e
    :try_start_5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1626
    .line 1627
    .line 1628
    move-result-wide v5

    .line 1629
    sget-object v3, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 1630
    .line 1631
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    mul-double v5, v5, v7

    .line 1637
    .line 1638
    double-to-long v10, v5

    .line 1639
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 1640
    .line 1641
    .line 1642
    move-result-wide v3

    .line 1643
    mul-double v3, v3, v7

    .line 1644
    .line 1645
    double-to-long v12, v3

    .line 1646
    const-string v3, "isMovingWindow"

    .line 1647
    .line 1648
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v14

    .line 1652
    const-string v3, "isLiveDone"

    .line 1653
    .line 1654
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 1655
    .line 1656
    .line 1657
    move-result v15

    .line 1658
    new-instance v3, LC3/j;

    .line 1659
    .line 1660
    move-object v9, v3

    .line 1661
    invoke-direct/range {v9 .. v15}, LC3/j;-><init>(JJZZ)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1662
    .line 1663
    .line 1664
    move-object v12, v3

    .line 1665
    goto :goto_30

    .line 1666
    :catch_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v0

    .line 1670
    const-string v3, "Ignoring Malformed MediaLiveSeekableRange: "

    .line 1671
    .line 1672
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v0

    .line 1676
    const/4 v3, 0x0

    .line 1677
    new-array v3, v3, [Ljava/lang/Object;

    .line 1678
    .line 1679
    sget-object v4, LC3/j;->K:LH3/b;

    .line 1680
    .line 1681
    iget-object v5, v4, LH3/b;->a:Ljava/lang/String;

    .line 1682
    .line 1683
    invoke-virtual {v4, v0, v3}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v0

    .line 1687
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    .line 1689
    .line 1690
    goto :goto_2f

    .line 1691
    :goto_30
    iput-object v12, v1, LC3/r;->a0:LC3/j;

    .line 1692
    .line 1693
    goto :goto_31

    .line 1694
    :cond_5f
    iget-object v0, v1, LC3/r;->a0:LC3/j;

    .line 1695
    .line 1696
    if-eqz v0, :cond_60

    .line 1697
    .line 1698
    const/4 v2, 0x2

    .line 1699
    or-int/2addr v3, v2

    .line 1700
    :cond_60
    const/4 v2, 0x0

    .line 1701
    iput-object v2, v1, LC3/r;->a0:LC3/j;

    .line 1702
    .line 1703
    move v2, v3

    .line 1704
    :goto_31
    return v2

    .line 1705
    :sswitch_data_0
    .sparse-switch
        0xc92 -> :sswitch_3
        0x192f6 -> :sswitch_2
        0x1bc41 -> :sswitch_1
        0x5e8b395 -> :sswitch_0
    .end sparse-switch

    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    :sswitch_data_1
    .sparse-switch
        -0x6b79e7ce -> :sswitch_c
        -0x68d6bb50 -> :sswitch_b
        -0x61538e2e -> :sswitch_a
        -0x4ea9f461 -> :sswitch_9
        -0x40e1912c -> :sswitch_8
        0x3b7864f -> :sswitch_7
        0x4624710 -> :sswitch_6
        0x176e3d36 -> :sswitch_5
        0x35c80eb5 -> :sswitch_4
    .end sparse-switch

    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final l(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, LC3/r;->W:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LC3/r;->d0:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, LC3/p;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget v3, v3, LC3/p;->H:I

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object v0, p0, LC3/r;->U:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    iput-object v0, p0, LC3/r;->T:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0x4f45

    .line 14
    .line 15
    invoke-static {v0, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {p1, v2, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, LC3/r;->H:J

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    invoke-static {p1, v3, v4}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, LC3/r;->I:I

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-static {p1, v2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    iget-wide v5, p0, LC3/r;->J:D

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-static {p1, v1, v4}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, LC3/r;->K:I

    .line 55
    .line 56
    const/4 v3, 0x6

    .line 57
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    .line 62
    .line 63
    iget v1, p0, LC3/r;->L:I

    .line 64
    .line 65
    const/4 v3, 0x7

    .line 66
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget-wide v5, p0, LC3/r;->M:J

    .line 73
    .line 74
    invoke-static {p1, v4, v4}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    .line 79
    .line 80
    iget-wide v5, p0, LC3/r;->N:J

    .line 81
    .line 82
    const/16 v1, 0x9

    .line 83
    .line 84
    invoke-static {p1, v1, v4}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    .line 89
    .line 90
    iget-wide v5, p0, LC3/r;->O:D

    .line 91
    .line 92
    const/16 v1, 0xa

    .line 93
    .line 94
    invoke-static {p1, v1, v4}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, LC3/r;->P:Z

    .line 101
    .line 102
    const/16 v3, 0xb

    .line 103
    .line 104
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, LC3/r;->Q:[J

    .line 111
    .line 112
    const/16 v3, 0xc

    .line 113
    .line 114
    invoke-static {p1, v3, v1}, Lf/b;->O(Landroid/os/Parcel;I[J)V

    .line 115
    .line 116
    .line 117
    iget v1, p0, LC3/r;->R:I

    .line 118
    .line 119
    const/16 v3, 0xd

    .line 120
    .line 121
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, LC3/r;->S:I

    .line 128
    .line 129
    const/16 v3, 0xe

    .line 130
    .line 131
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0xf

    .line 138
    .line 139
    iget-object v3, p0, LC3/r;->T:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v1, p0, LC3/r;->V:I

    .line 145
    .line 146
    const/16 v3, 0x10

    .line 147
    .line 148
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, LC3/r;->W:Ljava/util/ArrayList;

    .line 155
    .line 156
    const/16 v3, 0x11

    .line 157
    .line 158
    invoke-static {p1, v3, v1}, Lf/b;->U(Landroid/os/Parcel;ILjava/util/List;)V

    .line 159
    .line 160
    .line 161
    iget-boolean v1, p0, LC3/r;->X:Z

    .line 162
    .line 163
    const/16 v3, 0x12

    .line 164
    .line 165
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, LC3/r;->Y:LC3/c;

    .line 172
    .line 173
    const/16 v2, 0x13

    .line 174
    .line 175
    invoke-static {p1, v2, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, LC3/r;->Z:LC3/v;

    .line 179
    .line 180
    const/16 v2, 0x14

    .line 181
    .line 182
    invoke-static {p1, v2, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, LC3/r;->a0:LC3/j;

    .line 186
    .line 187
    const/16 v2, 0x15

    .line 188
    .line 189
    invoke-static {p1, v2, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, LC3/r;->b0:LC3/n;

    .line 193
    .line 194
    const/16 v2, 0x16

    .line 195
    .line 196
    invoke-static {p1, v2, v1, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method
