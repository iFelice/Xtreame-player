.class public final Lc4/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Ljava/lang/String;

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:J

.field public final synthetic J:Landroid/os/Bundle;

.field public final synthetic K:Z

.field public final synthetic L:Z

.field public final synthetic M:Z

.field public final synthetic N:Ljava/lang/String;

.field public final synthetic O:Lc4/K0;


# direct methods
.method public constructor <init>(Lc4/K0;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lc4/H0;->G:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lc4/H0;->H:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p4, p0, Lc4/H0;->I:J

    .line 9
    .line 10
    iput-object p6, p0, Lc4/H0;->J:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-boolean p7, p0, Lc4/H0;->K:Z

    .line 13
    .line 14
    iput-boolean p8, p0, Lc4/H0;->L:Z

    .line 15
    .line 16
    iput-boolean p9, p0, Lc4/H0;->M:Z

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lc4/H0;->N:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lc4/H0;->O:Lc4/K0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-boolean v8, p0, Lc4/H0;->M:Z

    .line 2
    .line 3
    iget-object v9, p0, Lc4/H0;->N:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lc4/H0;->O:Lc4/K0;

    .line 6
    .line 7
    iget-object v1, p0, Lc4/H0;->G:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lc4/H0;->H:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v3, p0, Lc4/H0;->I:J

    .line 12
    .line 13
    iget-object v5, p0, Lc4/H0;->J:Landroid/os/Bundle;

    .line 14
    .line 15
    iget-boolean v6, p0, Lc4/H0;->K:Z

    .line 16
    .line 17
    iget-boolean v7, p0, Lc4/H0;->L:Z

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v9}, Lc4/K0;->A(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
