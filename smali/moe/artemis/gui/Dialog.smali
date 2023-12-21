.class public Lmoe/artemis/gui/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"


# static fields
.field private static instances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmoe/artemis/gui/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private static seed:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:J

.field private dialog:Landroid/app/AlertDialog$Builder;

.field private editText:Landroid/widget/EditText;

.field private message:Ljava/lang/String;

.field private textField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity_",
            "title",
            "message_",
            "yesno",
            "textField_",
            "context_"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lmoe/artemis/gui/Dialog;->activity:Landroid/app/Activity;

    .line 24
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lmoe/artemis/gui/Dialog;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmoe/artemis/gui/Dialog;->dialog:Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lmoe/artemis/gui/Dialog;->editText:Landroid/widget/EditText;

    .line 26
    iput-object p3, p0, Lmoe/artemis/gui/Dialog;->message:Ljava/lang/String;

    .line 27
    iput-boolean p5, p0, Lmoe/artemis/gui/Dialog;->textField:Z

    .line 28
    iput-wide p6, p0, Lmoe/artemis/gui/Dialog;->context:J

    .line 31
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    iget-boolean p1, p0, Lmoe/artemis/gui/Dialog;->textField:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lmoe/artemis/gui/Dialog;->dialog:Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lmoe/artemis/gui/Dialog;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 35
    :cond_0
    iget-object p1, p0, Lmoe/artemis/gui/Dialog;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lmoe/artemis/gui/Dialog$1;

    invoke-direct {p2, p0}, Lmoe/artemis/gui/Dialog$1;-><init>(Lmoe/artemis/gui/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    iget-object p1, p0, Lmoe/artemis/gui/Dialog;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lmoe/artemis/gui/Dialog$2;

    invoke-direct {p2, p0}, Lmoe/artemis/gui/Dialog$2;-><init>(Lmoe/artemis/gui/Dialog;)V

    const-string p3, "OK"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_1

    .line 51
    iget-object p1, p0, Lmoe/artemis/gui/Dialog;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lmoe/artemis/gui/Dialog$3;

    invoke-direct {p2, p0}, Lmoe/artemis/gui/Dialog$3;-><init>(Lmoe/artemis/gui/Dialog;)V

    const-string p3, "Cancel"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    :cond_1
    iget-object p1, p0, Lmoe/artemis/gui/Dialog;->activity:Landroid/app/Activity;

    new-instance p2, Lmoe/artemis/gui/Dialog$4;

    invoke-direct {p2, p0}, Lmoe/artemis/gui/Dialog$4;-><init>(Lmoe/artemis/gui/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private native OnClose(ILjava/lang/String;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "text",
            "context"
        }
    .end annotation
.end method

.method public static Release(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 104
    sget-object v0, Lmoe/artemis/gui/Dialog;->instances:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmoe/artemis/gui/Dialog;->instances:Ljava/util/HashMap;

    .line 106
    :cond_0
    sget-object v0, Lmoe/artemis/gui/Dialog;->instances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmoe/artemis/gui/Dialog;->instances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static Show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZJ)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity_",
            "title",
            "message",
            "yesno",
            "textField_",
            "context_"
        }
    .end annotation

    .line 80
    sget v0, Lmoe/artemis/gui/Dialog;->seed:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.app.lib_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 90
    :cond_0
    sget v0, Lmoe/artemis/gui/Dialog;->seed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmoe/artemis/gui/Dialog;->seed:I

    .line 92
    sget-object v0, Lmoe/artemis/gui/Dialog;->instances:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmoe/artemis/gui/Dialog;->instances:Ljava/util/HashMap;

    .line 94
    :cond_1
    sget-object v0, Lmoe/artemis/gui/Dialog;->instances:Ljava/util/HashMap;

    sget v1, Lmoe/artemis/gui/Dialog;->seed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, Lmoe/artemis/gui/Dialog;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lmoe/artemis/gui/Dialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget v0, Lmoe/artemis/gui/Dialog;->seed:I

    return v0
.end method

.method static synthetic access$000(Lmoe/artemis/gui/Dialog;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Lmoe/artemis/gui/Dialog;->context:J

    return-wide v0
.end method

.method static synthetic access$100(Lmoe/artemis/gui/Dialog;ILjava/lang/String;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lmoe/artemis/gui/Dialog;->OnClose(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lmoe/artemis/gui/Dialog;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lmoe/artemis/gui/Dialog;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$202(Lmoe/artemis/gui/Dialog;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iput-object p1, p0, Lmoe/artemis/gui/Dialog;->editText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$300(Lmoe/artemis/gui/Dialog;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lmoe/artemis/gui/Dialog;->textField:Z

    return p0
.end method

.method static synthetic access$400(Lmoe/artemis/gui/Dialog;)Landroid/app/Activity;
    .locals 0

    .line 16
    iget-object p0, p0, Lmoe/artemis/gui/Dialog;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lmoe/artemis/gui/Dialog;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lmoe/artemis/gui/Dialog;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lmoe/artemis/gui/Dialog;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 16
    iget-object p0, p0, Lmoe/artemis/gui/Dialog;->dialog:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method
