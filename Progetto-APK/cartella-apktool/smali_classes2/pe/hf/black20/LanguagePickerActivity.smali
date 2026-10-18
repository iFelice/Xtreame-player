.class public Lpe/hf/black20/LanguagePickerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public final H:Lpe/hf/black20/LanguagePickerActivity;

.field public I:[Ljava/lang/String;

.field public J:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/LanguagePickerActivity;->H:Lpe/hf/black20/LanguagePickerActivity;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lpe/hf/black20/LanguagePickerActivity;->I:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/Locale;

    .line 14
    .line 15
    iget-object v2, p0, Lpe/hf/black20/LanguagePickerActivity;->G:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    const-string v3, "language"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0e0034

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0b028a

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v2, v0, Lpe/hf/black20/LanguagePickerActivity;->H:Lpe/hf/black20/LanguagePickerActivity;

    .line 22
    .line 23
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const v3, 0x7f0805f0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const v3, 0x7f08053b

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    const-string v1, "pe.hf.black20"

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lpe/hf/black20/LanguagePickerActivity;->G:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    const v1, 0x7f0b0329

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/ListView;

    .line 59
    .line 60
    iput-object v1, v0, Lpe/hf/black20/LanguagePickerActivity;->J:Landroid/widget/ListView;

    .line 61
    .line 62
    const-string v17, "ROM\u00c2N\u0102 (RO)"

    .line 63
    .line 64
    const-string v18, "RUSSAIN (RU)"

    .line 65
    .line 66
    const-string v4, "ENGLISH (US)"

    .line 67
    .line 68
    const-string v5, "\u0639\u0631\u0628\u0649 (AR)"

    .line 69
    .line 70
    const-string v6, "\u09ac\u09be\u0982\u09b2\u09be (BN)"

    .line 71
    .line 72
    const-string v7, "\u4e2d\u6587 (ZH)"

    .line 73
    .line 74
    const-string v8, "FRAN\u00c7AISE (FR)"

    .line 75
    .line 76
    const-string v9, "DEUTSCHE (DE)"

    .line 77
    .line 78
    const-string v10, "\u0939\u093f\u0928\u094d\u0926\u0940 (HI)"

    .line 79
    .line 80
    const-string v11, "ITALIANA (IT)"

    .line 81
    .line 82
    const-string v12, "HRVATSKI (HR)"

    .line 83
    .line 84
    const-string v13, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02 (ML)"

    .line 85
    .line 86
    const-string v14, "POLSKI (PL)"

    .line 87
    .line 88
    const-string v15, "PORTUGUESA (PT)(BR)"

    .line 89
    .line 90
    const-string v16, "ESPA\u00d1OLA (ES)"

    .line 91
    .line 92
    const-string v19, "SVENSKA (SV)"

    .line 93
    .line 94
    const-string v20, "TURKISH (TR)"

    .line 95
    .line 96
    filled-new-array/range {v4 .. v20}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lpe/hf/black20/LanguagePickerActivity;->I:[Ljava/lang/String;

    .line 101
    .line 102
    new-instance v1, Lb7/N;

    .line 103
    .line 104
    iget-object v2, v0, Lpe/hf/black20/LanguagePickerActivity;->H:Lpe/hf/black20/LanguagePickerActivity;

    .line 105
    .line 106
    iget-object v4, v0, Lpe/hf/black20/LanguagePickerActivity;->I:[Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {v1, v2, v4, v3}, Lb7/N;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v0, Lpe/hf/black20/LanguagePickerActivity;->J:Landroid/widget/ListView;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lpe/hf/black20/LanguagePickerActivity;->J:Landroid/widget/ListView;

    .line 117
    .line 118
    new-instance v2, Lb7/f;

    .line 119
    .line 120
    const/16 v3, 0xa

    .line 121
    .line 122
    invoke-direct {v2, v0, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
