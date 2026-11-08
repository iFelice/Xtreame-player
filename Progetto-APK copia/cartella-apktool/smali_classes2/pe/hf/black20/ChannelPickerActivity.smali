.class public Lpe/hf/black20/ChannelPickerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static K0:Landroid/widget/EditText;


# instance fields
.field public A0:Landroid/widget/TextView;

.field public B0:Landroid/widget/TextView;

.field public final C0:[Ljava/lang/String;

.field public D0:I

.field public E0:I

.field public F0:I

.field public G:Landroid/widget/ProgressBar;

.field public G0:I

.field public H:Lc7/a;

.field public H0:Landroid/widget/TextView;

.field public I:Lc7/d;

.field public I0:Lorg/json/JSONArray;

.field public J:Lc7/c;

.field public J0:Lorg/json/JSONArray;

.field public final K:Lpe/hf/black20/ChannelPickerActivity;

.field public L:Landroid/content/SharedPreferences;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Lh7/i;

.field public final P:Ljava/lang/String;

.field public Q:Landroid/widget/ListView;

.field public R:Landroid/widget/ListView;

.field public S:Ljava/util/ArrayList;

.field public T:Ljava/util/ArrayList;

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:Ljava/util/Calendar;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/Button;

.field public e0:Landroid/widget/Button;

.field public f0:Landroid/widget/Button;

.field public g0:Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l0:Ljava/lang/String;

.field public m0:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o0:Landroid/widget/Button;

.field public p0:Landroid/widget/Button;

.field public q0:Landroid/widget/Button;

.field public r0:Landroid/widget/Button;

.field public s0:Landroid/widget/Button;

.field public t0:Landroid/widget/Button;

.field public u0:Landroid/widget/Button;

.field public v0:Landroid/widget/Button;

.field public w0:Landroid/widget/Button;

.field public x0:Landroid/widget/Button;

.field public y0:Landroid/widget/TextView;

.field public z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/ChannelPickerActivity;->K:Lpe/hf/black20/ChannelPickerActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "0"

    .line 12
    .line 13
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->M:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->N:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "ASC"

    .line 18
    .line 19
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->P:Ljava/lang/String;

    .line 20
    .line 21
    const-string v9, "SEP"

    .line 22
    .line 23
    const-string v10, "OCT"

    .line 24
    .line 25
    const-string v1, "JAN"

    .line 26
    .line 27
    const-string v2, "FEB"

    .line 28
    .line 29
    const-string v3, "MAR"

    .line 30
    .line 31
    const-string v4, "APR"

    .line 32
    .line 33
    const-string v5, "MAY"

    .line 34
    .line 35
    const-string v6, "JUN"

    .line 36
    .line 37
    const-string v7, "JUL"

    .line 38
    .line 39
    const-string v8, "AUG"

    .line 40
    .line 41
    const-string v11, "NOV"

    .line 42
    .line 43
    const-string v12, "DEC"

    .line 44
    .line 45
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->C0:[Ljava/lang/String;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 53
    .line 54
    iput v0, p0, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 58
    .line 59
    iput v0, p0, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->I0:Lorg/json/JSONArray;

    .line 63
    .line 64
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->J0:Lorg/json/JSONArray;

    .line 65
    .line 66
    return-void
.end method

.method public static a(Lpe/hf/black20/ChannelPickerActivity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->K:Lpe/hf/black20/ChannelPickerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e0129

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v4, "#99000000"

    .line 31
    .line 32
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v4, 0x7f0b01c6

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/EditText;

    .line 47
    .line 48
    sput-object v2, Lpe/hf/black20/ChannelPickerActivity;->K0:Landroid/widget/EditText;

    .line 49
    .line 50
    const v2, 0x7f0b0524

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v2, p0, Lpe/hf/black20/ChannelPickerActivity;->b0:Landroid/widget/TextView;

    .line 60
    .line 61
    const v2, 0x7f0b057e

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v2, p0, Lpe/hf/black20/ChannelPickerActivity;->c0:Landroid/widget/TextView;

    .line 71
    .line 72
    const v2, 0x7f0b0107

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/widget/Button;

    .line 80
    .line 81
    iput-object v2, p0, Lpe/hf/black20/ChannelPickerActivity;->d0:Landroid/widget/Button;

    .line 82
    .line 83
    const v2, 0x7f0b00b0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/widget/Button;

    .line 91
    .line 92
    iput-object v2, p0, Lpe/hf/black20/ChannelPickerActivity;->e0:Landroid/widget/Button;

    .line 93
    .line 94
    const v2, 0x7f0b0118

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/widget/Button;

    .line 102
    .line 103
    iput-object v1, p0, Lpe/hf/black20/ChannelPickerActivity;->f0:Landroid/widget/Button;

    .line 104
    .line 105
    iget-object v1, p0, Lpe/hf/black20/ChannelPickerActivity;->d0:Landroid/widget/Button;

    .line 106
    .line 107
    new-instance v2, Lb7/H;

    .line 108
    .line 109
    const/4 v3, 0x6

    .line 110
    invoke-direct {v2, p0, v3}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lpe/hf/black20/ChannelPickerActivity;->e0:Landroid/widget/Button;

    .line 117
    .line 118
    new-instance v2, Lb7/I;

    .line 119
    .line 120
    const/4 v3, 0x2

    .line 121
    invoke-direct {v2, p0, v0, v3}, Lb7/I;-><init>(Lpe/hf/black20/ChannelPickerActivity;Landroid/app/AlertDialog;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lpe/hf/black20/ChannelPickerActivity;->f0:Landroid/widget/Button;

    .line 128
    .line 129
    new-instance v2, Lb7/I;

    .line 130
    .line 131
    const/4 v3, 0x3

    .line 132
    invoke-direct {v2, p0, v0, v3}, Lb7/I;-><init>(Lpe/hf/black20/ChannelPickerActivity;Landroid/app/AlertDialog;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 139
    .line 140
    .line 141
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-ne v0, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    :cond_3
    iget-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne v0, v2, :cond_4

    .line 51
    .line 52
    invoke-static {v1, p5}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p5

    .line 56
    :cond_4
    iput-object p3, p0, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p2, p0, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 59
    .line 60
    iput-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p4, p0, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 63
    .line 64
    iput-object p5, p0, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->b0:Landroid/widget/TextView;

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p3, "-"

    .line 79
    .line 80
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object p4, p0, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object p4, p0, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    sget-object p4, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 101
    .line 102
    new-instance p4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p5, "---------------"

    .line 105
    .line 106
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    const-string p5, "XCIPTV_TAG"

    .line 117
    .line 118
    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    new-instance p4, Ljava/text/SimpleDateFormat;

    .line 122
    .line 123
    const-string p5, "yyyy-MM-dd"

    .line 124
    .line 125
    invoke-direct {p4, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance p5, Ljava/text/SimpleDateFormat;

    .line 129
    .line 130
    const-string v0, "MMM dd, yyyy"

    .line 131
    .line 132
    invoke-direct {p5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    invoke-virtual {p4, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 136
    .line 137
    .line 138
    move-result-object p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 140
    :catch_0
    const/4 p2, 0x0

    .line 141
    :goto_0
    invoke-virtual {p5, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->H0:Landroid/widget/TextView;

    .line 149
    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object p4, p0, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object p4, p0, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object p3, p0, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p3, " "

    .line 177
    .line 178
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object p3, p0, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p3, ":"

    .line 187
    .line 188
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object p4, p0, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->c0:Landroid/widget/TextView;

    .line 204
    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object p4, p0, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object p3, p0, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e002c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->K:Lpe/hf/black20/ChannelPickerActivity;

    .line 11
    .line 12
    const-string v0, "pe.hf.black20"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->L:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    new-instance v0, Lc7/a;

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->H:Lc7/a;

    .line 27
    .line 28
    new-instance v0, Lc7/d;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->I:Lc7/d;

    .line 34
    .line 35
    new-instance v0, Lc7/c;

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    invoke-direct {v0, p1, v2}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->J:Lc7/c;

    .line 42
    .line 43
    new-instance v0, Lc7/b;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-direct {v0, p1, v3}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->H:Lc7/a;

    .line 50
    .line 51
    const-string v4, "Default (XC)"

    .line 52
    .line 53
    const-string v5, "ORT_PROFILE"

    .line 54
    .line 55
    invoke-static {v5, v4, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->O:Lh7/i;

    .line 60
    .line 61
    const v0, 0x7f0b028a

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_0

    .line 75
    .line 76
    const v4, 0x7f0805f0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const v4, 0x7f08053b

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    :goto_0
    const v0, 0x7f0b032a

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/ListView;

    .line 97
    .line 98
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->Q:Landroid/widget/ListView;

    .line 99
    .line 100
    const v0, 0x7f0b032b

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/ListView;

    .line 108
    .line 109
    iput-object v0, p0, Lpe/hf/black20/ChannelPickerActivity;->R:Landroid/widget/ListView;

    .line 110
    .line 111
    new-instance v0, Lc7/b;

    .line 112
    .line 113
    invoke-direct {v0, p1, v1}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 114
    .line 115
    .line 116
    const p1, 0x7f0b03da

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/widget/ProgressBar;

    .line 124
    .line 125
    iput-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->G:Landroid/widget/ProgressBar;

    .line 126
    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->a0:Ljava/util/Calendar;

    .line 132
    .line 133
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput p1, p0, Lpe/hf/black20/ChannelPickerActivity;->U:I

    .line 138
    .line 139
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->a0:Ljava/util/Calendar;

    .line 140
    .line 141
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    add-int/2addr p1, v3

    .line 146
    iput p1, p0, Lpe/hf/black20/ChannelPickerActivity;->V:I

    .line 147
    .line 148
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->a0:Ljava/util/Calendar;

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    add-int/2addr p1, v3

    .line 155
    iput p1, p0, Lpe/hf/black20/ChannelPickerActivity;->W:I

    .line 156
    .line 157
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->a0:Ljava/util/Calendar;

    .line 158
    .line 159
    const/4 v0, 0x5

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iput p1, p0, Lpe/hf/black20/ChannelPickerActivity;->X:I

    .line 165
    .line 166
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->a0:Ljava/util/Calendar;

    .line 167
    .line 168
    const/16 v0, 0xb

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput p1, p0, Lpe/hf/black20/ChannelPickerActivity;->Y:I

    .line 175
    .line 176
    iget-object p1, p0, Lpe/hf/black20/ChannelPickerActivity;->a0:Ljava/util/Calendar;

    .line 177
    .line 178
    const/16 v0, 0xc

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    iput p1, p0, Lpe/hf/black20/ChannelPickerActivity;->Z:I

    .line 185
    .line 186
    new-instance p1, Lb7/J;

    .line 187
    .line 188
    invoke-direct {p1, p0}, Lb7/J;-><init>(Lpe/hf/black20/ChannelPickerActivity;)V

    .line 189
    .line 190
    .line 191
    new-array v0, v1, [Ljava/lang/Void;

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isChannelPickerActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "ORT_isChannelPickerActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isChannelPickerActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method
