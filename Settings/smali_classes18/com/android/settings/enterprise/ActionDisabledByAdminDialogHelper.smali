.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;
.super Ljava/lang/Object;
.source "ActionDisabledByAdminDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogView:Landroid/view/ViewGroup;

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mRestriction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private getEnforcementAdminUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v0

    return v0
.end method

.method private getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I
    .locals 1

    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/16 v0, -0x2710

    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method private initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0073

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p3}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x10800b4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010435

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V

    const/16 v1, -0x2710

    if-ne p3, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v3, p2, v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$maybeSetLearnMoreButton$0$ActionDisabledByAdminDialogHelper(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method maybeSetLearnMoreButton(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v1

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f12092e

    new-instance v2, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$6KhLFg05b1gb8U6JccTnxRXgU-0;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$6KhLFg05b1gb8U6JccTnxRXgU-0;-><init>(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method public prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 6

    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d002e

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v3, v3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    const v1, 0x7f120be8

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->maybeSetLearnMoreButton(Landroidx/appcompat/app/AlertDialog$Builder;)V

    return-object v0
.end method

.method setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p3, :cond_6

    iget-object v0, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    :cond_2
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-direct {p0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_5

    const v2, 0x7f0a0075

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0a0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f120618

    if-nez p2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v3, "no_adjust_volume"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "no_outgoing_calls"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v8

    goto :goto_0

    :sswitch_2
    const-string v3, "policy_suspend_packages"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    goto :goto_0

    :sswitch_3
    const-string v3, "policy_disable_screen_capture"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    goto :goto_0

    :sswitch_4
    const-string v3, "policy_disable_camera"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v6

    goto :goto_0

    :sswitch_5
    const-string v3, "no_sms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v7

    :goto_0
    if-eqz v2, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const v1, 0x7f12061e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const v1, 0x7f12061c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    const v1, 0x7f12061a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    const v1, 0x7f12061d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    const v1, 0x7f12061b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_8
    const v1, 0x7f120619

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    nop

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e01ce25 -> :sswitch_5
        -0x379078f7 -> :sswitch_4
        0x24f9a257 -> :sswitch_3
        0x546cf0fd -> :sswitch_2
        0x74422d80 -> :sswitch_1
        0x7f4c17cc -> :sswitch_0
    .end sparse-switch
.end method

.method showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const-class v1, Lcom/android/settings/Settings$DeviceAdminSettingsActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    return-void
.end method
