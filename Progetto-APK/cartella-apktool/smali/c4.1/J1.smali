.class public final Lc4/J1;
.super LM3/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc4/J1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;

.field public final K:J

.field public final L:J

.field public final M:Ljava/lang/String;

.field public final N:Z

.field public final O:Z

.field public final P:J

.field public final Q:Ljava/lang/String;

.field public final R:J

.field public final S:I

.field public final T:Z

.field public final U:Z

.field public final V:Ljava/lang/String;

.field public final W:Ljava/lang/Boolean;

.field public final X:J

.field public final Y:Ljava/util/List;

.field public final Z:Ljava/lang/String;

.field public final a0:Ljava/lang/String;

.field public final b0:Ljava/lang/String;

.field public final c0:Ljava/lang/String;

.field public final d0:Z

.field public final e0:J

.field public final f0:I

.field public final g0:Ljava/lang/String;

.field public final h0:I

.field public final i0:J

.field public final j0:Ljava/lang/String;

.field public final k0:Ljava/lang/String;

.field public final l0:J

.field public final m0:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJ3/v;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, LJ3/v;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lc4/J1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    move-object v1, p1

    iput-object v1, v0, Lc4/J1;->G:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lc4/J1;->H:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lc4/J1;->I:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lc4/J1;->P:J

    move-object v1, p6

    iput-object v1, v0, Lc4/J1;->J:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lc4/J1;->K:J

    move-wide v1, p9

    iput-wide v1, v0, Lc4/J1;->L:J

    move-object v1, p11

    iput-object v1, v0, Lc4/J1;->M:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lc4/J1;->N:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lc4/J1;->O:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lc4/J1;->Q:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lc4/J1;->R:J

    move/from16 v1, p17

    iput v1, v0, Lc4/J1;->S:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lc4/J1;->T:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lc4/J1;->U:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lc4/J1;->V:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lc4/J1;->W:Ljava/lang/Boolean;

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lc4/J1;->X:J

    move-object/from16 v1, p24

    iput-object v1, v0, Lc4/J1;->Y:Ljava/util/List;

    move-object/from16 v1, p25

    iput-object v1, v0, Lc4/J1;->Z:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lc4/J1;->a0:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lc4/J1;->b0:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lc4/J1;->c0:Ljava/lang/String;

    move/from16 v1, p29

    iput-boolean v1, v0, Lc4/J1;->d0:Z

    move-wide/from16 v1, p30

    iput-wide v1, v0, Lc4/J1;->e0:J

    move/from16 v1, p32

    iput v1, v0, Lc4/J1;->f0:I

    move-object/from16 v1, p33

    iput-object v1, v0, Lc4/J1;->g0:Ljava/lang/String;

    move/from16 v1, p34

    iput v1, v0, Lc4/J1;->h0:I

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lc4/J1;->i0:J

    move-object/from16 v1, p37

    iput-object v1, v0, Lc4/J1;->j0:Ljava/lang/String;

    move-object/from16 v1, p38

    iput-object v1, v0, Lc4/J1;->k0:Ljava/lang/String;

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lc4/J1;->l0:J

    move/from16 v1, p41

    iput v1, v0, Lc4/J1;->m0:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 3

    .line 5
    move-object v0, p0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 7
    iput-object v1, v0, Lc4/J1;->G:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lc4/J1;->H:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lc4/J1;->I:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lc4/J1;->P:J

    move-object v1, p4

    iput-object v1, v0, Lc4/J1;->J:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lc4/J1;->K:J

    move-wide v1, p7

    iput-wide v1, v0, Lc4/J1;->L:J

    move-object v1, p9

    iput-object v1, v0, Lc4/J1;->M:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lc4/J1;->N:Z

    move v1, p11

    iput-boolean v1, v0, Lc4/J1;->O:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lc4/J1;->Q:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lc4/J1;->R:J

    move/from16 v1, p17

    iput v1, v0, Lc4/J1;->S:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lc4/J1;->T:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lc4/J1;->U:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lc4/J1;->V:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lc4/J1;->W:Ljava/lang/Boolean;

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lc4/J1;->X:J

    move-object/from16 v1, p24

    iput-object v1, v0, Lc4/J1;->Y:Ljava/util/List;

    move-object/from16 v1, p25

    iput-object v1, v0, Lc4/J1;->Z:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lc4/J1;->a0:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lc4/J1;->b0:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lc4/J1;->c0:Ljava/lang/String;

    move/from16 v1, p29

    iput-boolean v1, v0, Lc4/J1;->d0:Z

    move-wide/from16 v1, p30

    iput-wide v1, v0, Lc4/J1;->e0:J

    move/from16 v1, p32

    iput v1, v0, Lc4/J1;->f0:I

    move-object/from16 v1, p33

    iput-object v1, v0, Lc4/J1;->g0:Ljava/lang/String;

    move/from16 v1, p34

    iput v1, v0, Lc4/J1;->h0:I

    move-wide/from16 v1, p35

    iput-wide v1, v0, Lc4/J1;->i0:J

    move-object/from16 v1, p37

    iput-object v1, v0, Lc4/J1;->j0:Ljava/lang/String;

    move-object/from16 v1, p38

    iput-object v1, v0, Lc4/J1;->k0:Ljava/lang/String;

    move-wide/from16 v1, p39

    iput-wide v1, v0, Lc4/J1;->l0:J

    move/from16 v1, p41

    iput v1, v0, Lc4/J1;->m0:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p2, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x2

    .line 8
    iget-object v1, p0, Lc4/J1;->G:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget-object v1, p0, Lc4/J1;->H:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    iget-object v1, p0, Lc4/J1;->I:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget-object v2, p0, Lc4/J1;->J:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 35
    .line 36
    .line 37
    iget-wide v3, p0, Lc4/J1;->K:J

    .line 38
    .line 39
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 44
    .line 45
    .line 46
    iget-wide v3, p0, Lc4/J1;->L:J

    .line 47
    .line 48
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lc4/J1;->M:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {p1, v2, v1}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x9

    .line 57
    .line 58
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lc4/J1;->N:Z

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lc4/J1;->O:Z

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xb

    .line 77
    .line 78
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 79
    .line 80
    .line 81
    iget-wide v3, p0, Lc4/J1;->P:J

    .line 82
    .line 83
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0xc

    .line 87
    .line 88
    iget-object v3, p0, Lc4/J1;->Q:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0xe

    .line 94
    .line 95
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 96
    .line 97
    .line 98
    iget-wide v3, p0, Lc4/J1;->R:J

    .line 99
    .line 100
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    .line 102
    .line 103
    const/16 v1, 0xf

    .line 104
    .line 105
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lc4/J1;->S:I

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    .line 112
    .line 113
    const/16 v1, 0x10

    .line 114
    .line 115
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 116
    .line 117
    .line 118
    iget-boolean v1, p0, Lc4/J1;->T:Z

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    .line 122
    .line 123
    const/16 v1, 0x12

    .line 124
    .line 125
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 126
    .line 127
    .line 128
    iget-boolean v1, p0, Lc4/J1;->U:Z

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x13

    .line 134
    .line 135
    iget-object v3, p0, Lc4/J1;->V:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x15

    .line 141
    .line 142
    iget-object v3, p0, Lc4/J1;->W:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-static {p1, v1, v3}, Lf/b;->I(Landroid/os/Parcel;ILjava/lang/Boolean;)V

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x16

    .line 148
    .line 149
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 150
    .line 151
    .line 152
    iget-wide v3, p0, Lc4/J1;->X:J

    .line 153
    .line 154
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    .line 156
    .line 157
    const/16 v1, 0x17

    .line 158
    .line 159
    iget-object v3, p0, Lc4/J1;->Y:Ljava/util/List;

    .line 160
    .line 161
    invoke-static {p1, v1, v3}, Lf/b;->S(Landroid/os/Parcel;ILjava/util/List;)V

    .line 162
    .line 163
    .line 164
    const/16 v1, 0x18

    .line 165
    .line 166
    iget-object v3, p0, Lc4/J1;->Z:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/16 v1, 0x19

    .line 172
    .line 173
    iget-object v3, p0, Lc4/J1;->a0:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0x1a

    .line 179
    .line 180
    iget-object v3, p0, Lc4/J1;->b0:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/16 v1, 0x1b

    .line 186
    .line 187
    iget-object v3, p0, Lc4/J1;->c0:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/16 v1, 0x1c

    .line 193
    .line 194
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 195
    .line 196
    .line 197
    iget-boolean v1, p0, Lc4/J1;->d0:Z

    .line 198
    .line 199
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    .line 201
    .line 202
    const/16 v1, 0x1d

    .line 203
    .line 204
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 205
    .line 206
    .line 207
    iget-wide v3, p0, Lc4/J1;->e0:J

    .line 208
    .line 209
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    .line 211
    .line 212
    const/16 v1, 0x1e

    .line 213
    .line 214
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 215
    .line 216
    .line 217
    iget v1, p0, Lc4/J1;->f0:I

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    .line 221
    .line 222
    const/16 v1, 0x1f

    .line 223
    .line 224
    iget-object v3, p0, Lc4/J1;->g0:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/16 v1, 0x20

    .line 230
    .line 231
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 232
    .line 233
    .line 234
    iget v1, p0, Lc4/J1;->h0:I

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    .line 238
    .line 239
    const/16 v1, 0x22

    .line 240
    .line 241
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 242
    .line 243
    .line 244
    iget-wide v3, p0, Lc4/J1;->i0:J

    .line 245
    .line 246
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    .line 248
    .line 249
    const/16 v1, 0x23

    .line 250
    .line 251
    iget-object v3, p0, Lc4/J1;->j0:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const/16 v1, 0x24

    .line 257
    .line 258
    iget-object v3, p0, Lc4/J1;->k0:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {p1, v1, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const/16 v1, 0x25

    .line 264
    .line 265
    invoke-static {p1, v1, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 266
    .line 267
    .line 268
    iget-wide v1, p0, Lc4/J1;->l0:J

    .line 269
    .line 270
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    .line 272
    .line 273
    const/16 v1, 0x26

    .line 274
    .line 275
    invoke-static {p1, v1, v0}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 276
    .line 277
    .line 278
    iget v0, p0, Lc4/J1;->m0:I

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    .line 282
    .line 283
    invoke-static {p2, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 284
    .line 285
    .line 286
    return-void
.end method
