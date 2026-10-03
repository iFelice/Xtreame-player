.class public final LD/n;
.super LD/p;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/CharSequence;


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LD/p;->a(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(LD/t;)V
    .locals 1

    .line 1
    iget-object p1, p1, LD/t;->b:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, LD/n;->b:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$BigTextStyle"

    .line 2
    .line 3
    return-object v0
.end method
