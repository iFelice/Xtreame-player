.class public final Le2/i;
.super LQ1/a;
.source "SourceFile"


# static fields
.field public static final c:Le2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le2/i;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x5

    .line 5
    invoke-direct {v0, v1, v2}, LQ1/a;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Le2/i;->c:Le2/i;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(LU1/c;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
