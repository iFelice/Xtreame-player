.class public Lpe/hf/black20/speedtest/SpeedTestActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static J:I

.field public static K:I


# instance fields
.field public final G:Lpe/hf/black20/speedtest/SpeedTestActivity;

.field public H:Lk7/j;

.field public I:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/speedtest/SpeedTestActivity;->G:Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lpe/hf/black20/speedtest/SpeedTestActivity;->H:Lk7/j;

    .line 8
    .line 9
    return-void
.end method

.method public static a(D)I
    .locals 5

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpg-double v4, p0, v0

    if-gtz v4, :cond_0

    mul-double p0, p0, v2

    double-to-int p0, p0

    return p0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v4, p0, v0

    if-gtz v4, :cond_1

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x1e

    return p0

    :cond_1
    cmpg-double v4, p0, v2

    if-gtz v4, :cond_2

    sub-double/2addr p0, v0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    add-int/lit8 p0, p0, 0x5a

    return p0

    :cond_2
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    cmpg-double v4, p0, v0

    if-gtz v4, :cond_3

    sub-double/2addr p0, v2

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double p0, p0, v0

    double-to-int p0, p0

    add-int/lit16 p0, p0, 0x96

    return p0

    :cond_3
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v4, p0, v2

    if-gtz v4, :cond_4

    sub-double/2addr p0, v0

    const-wide v0, 0x3ff3333333333333L    # 1.2

    mul-double p0, p0, v0

    double-to-int p0, p0

    add-int/lit16 p0, p0, 0xb4

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e004e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b028a

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/speedtest/SpeedTestActivity;->G:Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 20
    .line 21
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const v1, 0x7f0805f0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v1, 0x7f08053b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const p1, 0x7f0b0475

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/Button;

    .line 48
    .line 49
    new-instance v1, Ljava/text/DecimalFormat;

    .line 50
    .line 51
    const-string v2, "#.##"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const v2, 0x7f1301b0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lpe/hf/black20/speedtest/SpeedTestActivity;->I:Ljava/util/HashSet;

    .line 72
    .line 73
    new-instance v0, Lk7/j;

    .line 74
    .line 75
    invoke-direct {v0}, Lk7/j;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lpe/hf/black20/speedtest/SpeedTestActivity;->H:Lk7/j;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    .line 82
    .line 83
    new-instance v0, LW4/a;

    .line 84
    .line 85
    const/4 v2, 0x7

    .line 86
    invoke-direct {v0, p0, p1, v1, v2}, LW4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk7/j;

    .line 5
    .line 6
    invoke-direct {v0}, Lk7/j;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lpe/hf/black20/speedtest/SpeedTestActivity;->H:Lk7/j;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
