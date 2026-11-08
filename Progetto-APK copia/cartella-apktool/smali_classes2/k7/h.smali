.class public final Lk7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Ljava/util/List;

.field public final synthetic H:D

.field public final synthetic I:Ln2/t;


# direct methods
.method public constructor <init>(Ln2/t;Ljava/util/List;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk7/h;->I:Ln2/t;

    .line 5
    .line 6
    iput-object p2, p0, Lk7/h;->G:Ljava/util/List;

    .line 7
    .line 8
    iput-wide p3, p0, Lk7/h;->H:D

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk7/h;->I:Ln2/t;

    .line 2
    .line 3
    iget-object v1, v0, Ln2/t;->L:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, LW4/a;

    .line 6
    .line 7
    iget-object v1, v1, LW4/a;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/widget/Button;

    .line 10
    .line 11
    const/high16 v2, 0x41500000    # 13.0f

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Ln2/t;->L:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, LW4/a;

    .line 19
    .line 20
    iget-object v0, v0, LW4/a;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/widget/Button;

    .line 23
    .line 24
    iget-object v1, p0, Lk7/h;->G:Ljava/util/List;

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v3, Ljava/text/DecimalFormat;

    .line 32
    .line 33
    const-string v4, "#.##"

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-wide v4, p0, Lk7/h;->H:D

    .line 39
    .line 40
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    div-double/2addr v4, v6

    .line 46
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    aput-object v1, v2, v4

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    aput-object v3, v2, v1

    .line 57
    .line 58
    const-string v1, "Host Location: %s [Distance: %s km]"

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
