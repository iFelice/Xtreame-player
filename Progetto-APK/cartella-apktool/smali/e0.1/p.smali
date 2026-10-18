.class public abstract Le0/p;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Le0/m;


# instance fields
.field public final G:Lm2/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm2/u;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lm2/u;-><init>(Le0/m;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le0/p;->G:Lm2/u;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final h()Le0/o;
    .locals 1

    .line 1
    iget-object v0, p0, Le0/p;->G:Lm2/u;

    .line 2
    .line 3
    iget-object v0, v0, Lm2/u;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le0/o;

    .line 6
    .line 7
    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Le0/i;->ON_START:Le0/i;

    .line 7
    .line 8
    iget-object v0, p0, Le0/p;->G:Lm2/u;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lm2/u;->N(Le0/i;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    sget-object v0, Le0/i;->ON_CREATE:Le0/i;

    .line 2
    .line 3
    iget-object v1, p0, Le0/p;->G:Lm2/u;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lm2/u;->N(Le0/i;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Le0/i;->ON_STOP:Le0/i;

    .line 2
    .line 3
    iget-object v1, p0, Le0/p;->G:Lm2/u;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lm2/u;->N(Le0/i;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Le0/i;->ON_DESTROY:Le0/i;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lm2/u;->N(Le0/i;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    sget-object v0, Le0/i;->ON_START:Le0/i;

    .line 2
    .line 3
    iget-object v1, p0, Le0/p;->G:Lm2/u;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lm2/u;->N(Le0/i;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
