.class public final Lk7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lk7/c;

.field public final synthetic I:Ln2/t;


# direct methods
.method public synthetic constructor <init>(Ln2/t;Lk7/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lk7/i;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lk7/i;->I:Ln2/t;

    .line 7
    .line 8
    iput-object p2, p0, Lk7/i;->H:Lk7/c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lk7/i;->G:I

    .line 2
    .line 3
    const-string v1, " ms"

    .line 4
    .line 5
    iget-object v2, p0, Lk7/i;->H:Lk7/c;

    .line 6
    .line 7
    iget-object v3, p0, Lk7/i;->I:Ln2/t;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v3, Ln2/t;->J:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, LW4/a;

    .line 24
    .line 25
    iget-object v3, v3, LW4/a;->I:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Ljava/text/DecimalFormat;

    .line 28
    .line 29
    iget-wide v5, v2, Lk7/c;->I:D

    .line 30
    .line 31
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-object v0, v3, Ln2/t;->J:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v3, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, LW4/a;

    .line 61
    .line 62
    iget-object v3, v3, LW4/a;->I:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Ljava/text/DecimalFormat;

    .line 65
    .line 66
    iget-wide v5, v2, Lk7/c;->J:D

    .line 67
    .line 68
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
